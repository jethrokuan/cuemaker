class CuePdf < Prawn::Document
  def initialize(cue)
    super(page_size: [220,140], :margin => [8,8,8,8], font: "Helvetica")
    @cue = cue
    body
  end
  
  def body
    @cue.body.split(/\n/).each do |cue|
      group do
        text cue, size: 8
      end
    end
  end
end