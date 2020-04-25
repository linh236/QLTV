module BorrowsHelper
  def getBookCode book_id1,book_id2,code_book,current_user,user
    if book_id1 == book_id2&&current_user == user
      return code_book
    end
  end
  def check_status status
    if status == 0
      return I18n.t("book.processed")
    else
      return I18n.t("book.borrowed")
    end
  end
  def confirm val1,val2,active,book_user,amount_user
    str = "selected id=ds_select ds=1 disabled";
    if val1==val2 && active==true
      if book_user == amount_user
        return str
      end
    end
  end
  def getCode val1,val2,active,code,book_user,amount_user
    if val1==val2 && active == true
      if book_user == amount_user
        return code
      else
        return code
      end
    end
  end
  def check_code_amount amounts, bookid
    amounts.each do |ar|
      if ar.book_id == bookid
        return ar.code
      end
    end
  end
end
