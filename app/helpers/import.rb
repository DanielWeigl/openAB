require 'spreadsheet'

class Import

  def import
    book = Spreadsheet.open 'import.xls'
    sheet1 = book.worksheet 0
    
    sheet1.each do |row|      
      
      anrede = Anrede.where(:anrede => row[3]).first_or_create 
      akTit = AkademischerTitel.where(:titel => row[4]).first_or_create 
      #if (anrede == nil)
      #  anrede = Anrede.create({:anrede => row[3]})
      #end
      
      Adresse.create({ :vorname => row[1],
                      :nachname => row[2],
                      :firma => row[0],
                      :anrede_id => anrede.id,
                      :akademischerTitel_id => akTit.id
                    })
      puts(row[0])
    end
    
  end

end