.class public Lcom/ubtechinc/service/action/ParseAction;
.super Ljava/lang/Object;
.source "ParseAction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getXmlDemo(Ljava/lang/String;)Lcom/ubtechinc/service/protocols/ActionProfileXMLResponse;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 28
    new-instance v2, Lcom/ubtechinc/service/business/ParseManager;

    invoke-direct {v2}, Lcom/ubtechinc/service/business/ParseManager;-><init>()V

    .line 29
    .local v2, "mgr":Lcom/ubtechinc/service/business/ParseManager;
    const/4 v0, 0x0

    .line 31
    .local v0, "bean":Lcom/ubtechinc/service/protocols/ActionProfileXMLResponse;
    :try_start_0
    invoke-virtual {v2, p1}, Lcom/ubtechinc/service/business/ParseManager;->getXmlDemo(Ljava/lang/String;)Lcom/ubtechinc/service/protocols/ActionProfileXMLResponse;
    :try_end_0
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 36
    :goto_0
    return-object v0

    .line 32
    :catch_0
    move-exception v1

    .line 34
    .local v1, "e":Lorg/apache/http/HttpException;
    invoke-virtual {v1}, Lorg/apache/http/HttpException;->printStackTrace()V

    goto :goto_0
.end method

.method public setXmlDemo(Ljava/lang/String;Lcom/ubtechinc/service/protocols/ActionProfileXMLResponse;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "response"    # Lcom/ubtechinc/service/protocols/ActionProfileXMLResponse;

    .prologue
    .line 40
    new-instance v2, Lcom/ubtechinc/service/business/ParseManager;

    invoke-direct {v2}, Lcom/ubtechinc/service/business/ParseManager;-><init>()V

    .line 41
    .local v2, "mgr":Lcom/ubtechinc/service/business/ParseManager;
    const/4 v1, 0x0

    .line 43
    .local v1, "isSuccess":Z
    :try_start_0
    invoke-virtual {v2, p1, p2}, Lcom/ubtechinc/service/business/ParseManager;->setXmlDemo(Ljava/lang/String;Lcom/ubtechinc/service/protocols/ActionProfileXMLResponse;)Z
    :try_end_0
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 48
    :goto_0
    return v1

    .line 44
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Lorg/apache/http/HttpException;
    invoke-virtual {v0}, Lorg/apache/http/HttpException;->printStackTrace()V

    goto :goto_0
.end method
