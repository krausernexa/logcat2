.class public Lcom/ubtechinc/alpha2ctrlapp/network/common/DecodeJsonMessage;
.super Ljava/lang/Object;
.source "DecodeJsonMessage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/Object;)Lcom/ubtechinc/alpha2ctrlapp/network/model/response/BaseResponse;
    .locals 7
    .param p0, "jsonStr"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x4

    .line 10
    new-instance v1, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/BaseResponse;

    invoke-direct {v1}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/BaseResponse;-><init>()V

    .line 11
    .local v1, "response":Lcom/ubtechinc/alpha2ctrlapp/network/model/response/BaseResponse;
    invoke-static {}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->getInstance()Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;

    move-result-object v2

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/CommonResPonse;

    .line 11
    invoke-virtual {v2, v3, v4}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/CommonResPonse;

    .line 13
    .local v0, "commonRespon":Lcom/ubtechinc/alpha2ctrlapp/network/model/response/CommonResPonse;
    invoke-virtual {v0}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/CommonResPonse;->isStatus()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/BaseResponse;->setStatus(Z)V

    .line 14
    invoke-virtual {v0}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/CommonResPonse;->getInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/BaseResponse;->setMessage(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/CommonResPonse;->getModels()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/BaseResponse;->setModel(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {v1}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v5, :cond_1

    .line 17
    invoke-virtual {v1}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ubtechinc/alpha2ctrlapp/network/common/DecodeJsonMessage;->isNumeric(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 18
    invoke-virtual {v1}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/BaseResponse;->setMessageCode(I)V

    .line 30
    :cond_0
    :goto_0
    return-object v1

    .line 21
    :cond_1
    invoke-virtual {v1}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/BaseResponse;->isStatus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 22
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/BaseResponse;->setMessageCode(I)V

    .line 26
    :goto_1
    invoke-virtual {v1}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/BaseResponse;->setMessageCode(I)V

    goto :goto_0

    .line 24
    :cond_2
    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/BaseResponse;->setMessageCode(I)V

    goto :goto_1
.end method

.method public static getMessage(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 33
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 34
    .local v0, "msg":[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v3, :cond_0

    .line 35
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ubtechinc/alpha2ctrlapp/network/common/DecodeJsonMessage;->isNumeric(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 41
    :goto_0
    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 42
    return-object v0

    .line 38
    :cond_0
    const-string v1, "-2"

    aput-object v1, v0, v2

    goto :goto_0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 47
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method
