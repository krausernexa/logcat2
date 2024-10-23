.class public abstract Lcom/ubtechinc/service/base/BaseManager;
.super Ljava/lang/Object;
.source "BaseManager.java"


# static fields
.field protected static final BOTH:I = 0x3

.field protected static final JOSN:I = 0x1

.field protected static final XML:I = 0x2


# instance fields
.field protected xmlMapper:Lcom/thoughtworks/xstream/XStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/ubtechinc/service/base/BaseManager;-><init>(I)V

    .line 26
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "parseType"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    packed-switch p1, :pswitch_data_0

    .line 42
    invoke-virtual {p0}, Lcom/ubtechinc/service/base/BaseManager;->getXMLMapper()Lcom/thoughtworks/xstream/XStream;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/service/base/BaseManager;->xmlMapper:Lcom/thoughtworks/xstream/XStream;

    .line 45
    :goto_0
    :pswitch_0
    return-void

    .line 39
    :pswitch_1
    invoke-virtual {p0}, Lcom/ubtechinc/service/base/BaseManager;->getXMLMapper()Lcom/thoughtworks/xstream/XStream;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/service/base/BaseManager;->xmlMapper:Lcom/thoughtworks/xstream/XStream;

    goto :goto_0

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public beanToXml(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v1, Lcom/thoughtworks/xstream/XStream;

    new-instance v2, Lcom/thoughtworks/xstream/io/xml/DomDriver;

    invoke-direct {v2}, Lcom/thoughtworks/xstream/io/xml/DomDriver;-><init>()V

    invoke-direct {v1, v2}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V

    .line 122
    .local v1, "xstream":Lcom/thoughtworks/xstream/XStream;
    invoke-virtual {v1, p2}, Lcom/thoughtworks/xstream/XStream;->processAnnotations(Ljava/lang/Class;)V

    .line 123
    const-string v2, "zdy"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {v1, p1}, Lcom/thoughtworks/xstream/XStream;->toXML(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "xml":Ljava/lang/String;
    return-object v0
.end method

.method public getXMLMapper()Lcom/thoughtworks/xstream/XStream;
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ubtechinc/service/base/BaseManager;->xmlMapper:Lcom/thoughtworks/xstream/XStream;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/ubtechinc/service/base/BaseManager$1;

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/XppDriver;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/io/xml/XppDriver;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/ubtechinc/service/base/BaseManager$1;-><init>(Lcom/ubtechinc/service/base/BaseManager;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V

    iput-object v0, p0, Lcom/ubtechinc/service/base/BaseManager;->xmlMapper:Lcom/thoughtworks/xstream/XStream;

    .line 74
    iget-object v0, p0, Lcom/ubtechinc/service/base/BaseManager;->xmlMapper:Lcom/thoughtworks/xstream/XStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/XStream;->autodetectAnnotations(Z)V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/ubtechinc/service/base/BaseManager;->xmlMapper:Lcom/thoughtworks/xstream/XStream;

    return-object v0
.end method

.method public xmlToBean(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "xml"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 103
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v1, p0, Lcom/ubtechinc/service/base/BaseManager;->xmlMapper:Lcom/thoughtworks/xstream/XStream;

    invoke-virtual {v1, p2}, Lcom/thoughtworks/xstream/XStream;->processAnnotations(Ljava/lang/Class;)V

    .line 104
    iget-object v1, p0, Lcom/ubtechinc/service/base/BaseManager;->xmlMapper:Lcom/thoughtworks/xstream/XStream;

    invoke-virtual {v1, p1}, Lcom/thoughtworks/xstream/XStream;->fromXML(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    .line 105
    .local v0, "obj":Ljava/lang/Object;, "TT;"
    return-object v0
.end method

.method public xmlToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 89
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v1, p0, Lcom/ubtechinc/service/base/BaseManager;->xmlMapper:Lcom/thoughtworks/xstream/XStream;

    invoke-virtual {v1, p2}, Lcom/thoughtworks/xstream/XStream;->processAnnotations(Ljava/lang/Class;)V

    .line 90
    iget-object v1, p0, Lcom/ubtechinc/service/base/BaseManager;->xmlMapper:Lcom/thoughtworks/xstream/XStream;

    invoke-virtual {v1, p1}, Lcom/thoughtworks/xstream/XStream;->fromXML(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    .local v0, "obj":Ljava/lang/Object;, "TT;"
    return-object v0
.end method
