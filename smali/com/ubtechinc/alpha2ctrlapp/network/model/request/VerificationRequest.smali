.class public Lcom/ubtechinc/alpha2ctrlapp/network/model/request/VerificationRequest;
.super Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;
.source "VerificationRequest.java"


# instance fields
.field private code:Ljava/lang/String;

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
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/VerificationRequest;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getEquipmentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/VerificationRequest;->equipmentId:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/VerificationRequest;->code:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setEquipmentId(Ljava/lang/String;)V
    .locals 0
    .param p1, "equipmentId"    # Ljava/lang/String;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/VerificationRequest;->equipmentId:Ljava/lang/String;

    .line 12
    return-void
.end method
