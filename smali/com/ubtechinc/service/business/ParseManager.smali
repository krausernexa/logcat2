.class public Lcom/ubtechinc/service/business/ParseManager;
.super Lcom/ubtechinc/service/base/BaseManager;
.source "ParseManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/ubtechinc/service/base/BaseManager;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "parseType"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/ubtechinc/service/base/BaseManager;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public getXmlDemo(Ljava/lang/String;)Lcom/ubtechinc/service/protocols/ActionProfileXMLResponse;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 42
    const/4 v1, 0x0

    .line 43
    .local v1, "response":Lcom/ubtechinc/service/protocols/ActionProfileXMLResponse;
    const/4 v2, 0x0

    .line 45
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lcom/ubtechinc/utils/FileUtils;->readFromProfile(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 50
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 51
    const-class v3, Lcom/ubtechinc/service/protocols/ActionProfileXMLResponse;

    invoke-virtual {p0, v2, v3}, Lcom/ubtechinc/service/business/ParseManager;->xmlToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "response":Lcom/ubtechinc/service/protocols/ActionProfileXMLResponse;
    check-cast v1, Lcom/ubtechinc/service/protocols/ActionProfileXMLResponse;

    .line 52
    .restart local v1    # "response":Lcom/ubtechinc/service/protocols/ActionProfileXMLResponse;
    const-string v3, "zdy"

    invoke-virtual {v1}, Lcom/ubtechinc/service/protocols/ActionProfileXMLResponse;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    return-object v1

    .line 46
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public setXmlDemo(Ljava/lang/String;Lcom/ubtechinc/service/protocols/ActionProfileXMLResponse;)Z
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "response"    # Lcom/ubtechinc/service/protocols/ActionProfileXMLResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 61
    const/4 v1, 0x0

    .line 62
    .local v1, "isSuccess":Z
    const-class v3, Lcom/ubtechinc/service/protocols/ActionProfileXMLResponse;

    invoke-virtual {p0, p2, v3}, Lcom/ubtechinc/service/business/ParseManager;->beanToXml(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "xmls":Ljava/lang/String;
    :try_start_0
    invoke-static {p1, v2}, Lcom/ubtechinc/utils/FileUtils;->writeToProfile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    const/4 v1, 0x1

    .line 70
    :goto_0
    const-string v3, "zdy"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return v1

    .line 66
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
