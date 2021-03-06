// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.disid.proof.config.jackson;

import com.fasterxml.jackson.databind.module.SimpleModule;
import org.disid.proof.config.jackson.DomainModelModule;
import org.disid.proof.domain.Author;
import org.disid.proof.domain.Book;
import org.disid.proof.domain.Cover;
import org.disid.proof.domain.Editorial;
import org.disid.proof.web.AuthorJsonMixin;
import org.disid.proof.web.BookJsonMixin;
import org.disid.proof.web.CoverJsonMixin;
import org.disid.proof.web.EditorialJsonMixin;
import org.springframework.boot.jackson.JsonComponent;

privileged aspect DomainModelModule_Roo_DomainModelModule {
    
    declare parents: DomainModelModule extends SimpleModule;
    
    declare @type: DomainModelModule: @JsonComponent;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     */
    public DomainModelModule.new() {
        // Mixin registration
        
        setMixInAnnotation(Author.class, AuthorJsonMixin.class);
        setMixInAnnotation(Book.class, BookJsonMixin.class);
        setMixInAnnotation(Cover.class, CoverJsonMixin.class);
        setMixInAnnotation(Editorial.class, EditorialJsonMixin.class);
    }

}
