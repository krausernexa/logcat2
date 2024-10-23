.class public Lcom/ubtechinc/alpha2ctrlapp/network/model/response/BaseResponse;
.super Ljava/lang/Object;
.source "BaseResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x778726dd15cbce1L


# instance fields
.field private Message:Ljava/lang/String;

.field private MessageCode:I

.field private model:Ljava/lang/Object;

.field private status:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/BaseResponse;->MessageCode:I

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/BaseResponse;->Message:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageCode()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/BaseResponse;->MessageCode:I

    return v0
.end method

.method public getModel()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/BaseResponse;->model:Ljava/lang/Object;

    return-object v0
.end method

.method public isStatus()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/BaseResponse;->status:Z

    return v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/BaseResponse;->Message:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setMessageCode(I)V
    .locals 0
    .param p1, "messageCode"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/BaseResponse;->MessageCode:I

    .line 38
    return-void
.end method

.method public setModel(Ljava/lang/Object;)V
    .locals 0
    .param p1, "model"    # Ljava/lang/Object;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/BaseResponse;->model:Ljava/lang/Object;

    .line 32
    return-void
.end method

.method public setStatus(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/BaseResponse;->status:Z

    .line 20
    return-void
.end method
