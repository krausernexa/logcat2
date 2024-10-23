.class Lcom/ubtechinc/alpha2ctrlapp/network/model/request/DownloadLogger;
.super Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;
.source "DownloadLogger.java"


# instance fields
.field robotSeq:Ljava/lang/String;

.field private tpye:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getRobotSeq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/DownloadLogger;->robotSeq:Ljava/lang/String;

    return-object v0
.end method

.method public getTpye()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/DownloadLogger;->tpye:I

    return v0
.end method

.method public setRobotSeq(Ljava/lang/String;)V
    .locals 0
    .param p1, "robotSeq"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/DownloadLogger;->robotSeq:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setTpye(I)V
    .locals 0
    .param p1, "tpye"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/DownloadLogger;->tpye:I

    .line 35
    return-void
.end method
