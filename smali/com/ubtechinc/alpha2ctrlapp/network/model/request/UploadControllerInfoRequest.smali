.class public Lcom/ubtechinc/alpha2ctrlapp/network/model/request/UploadControllerInfoRequest;
.super Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;
.source "UploadControllerInfoRequest.java"


# instance fields
.field private controlUserId:Ljava/lang/String;

.field private equipmentId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getControlUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/UploadControllerInfoRequest;->controlUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getEquipmentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/UploadControllerInfoRequest;->equipmentId:Ljava/lang/String;

    return-object v0
.end method

.method public setControlUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "controlUserId"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/UploadControllerInfoRequest;->controlUserId:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setEquipmentId(Ljava/lang/String;)V
    .locals 0
    .param p1, "equipmentId"    # Ljava/lang/String;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/UploadControllerInfoRequest;->equipmentId:Ljava/lang/String;

    .line 12
    return-void
.end method
