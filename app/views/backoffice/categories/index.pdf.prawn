prawn_document(page_layout: :portrait) do |pdf|
    pdf.text 'Testando Pdf'
    pdf.move_down 20
    pdf.table @categories.collect{|c| [c.id,c.description]}
  end