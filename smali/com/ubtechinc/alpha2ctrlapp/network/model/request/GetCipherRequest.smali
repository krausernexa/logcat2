.class public Lcom/ubtechinc/alpha2ctrlapp/network/model/request/GetCipherRequest;
.super Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;
.source "GetCipherRequest.java"


# instance fields
.field private code:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/GetCipherRequest;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/GetCipherRequest;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/GetCipherRequest;->code:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/GetCipherRequest;->type:Ljava/lang/String;

    .line 12
    return-void
.end method
