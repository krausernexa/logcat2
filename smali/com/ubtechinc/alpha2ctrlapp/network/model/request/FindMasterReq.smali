.class public Lcom/ubtechinc/alpha2ctrlapp/network/model/request/FindMasterReq;
.super Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;
.source "FindMasterReq.java"


# instance fields
.field private equipmentId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getEquipmentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/FindMasterReq;->equipmentId:Ljava/lang/String;

    return-object v0
.end method

.method public setEquipmentId(Ljava/lang/String;)V
    .locals 0
    .param p1, "equipmentId"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/FindMasterReq;->equipmentId:Ljava/lang/String;

    .line 16
    return-void
.end method
