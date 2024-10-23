.class public Lcom/ubtechinc/service/protocols/QuerySoftwareVersion;
.super Ljava/lang/Object;
.source "QuerySoftwareVersion.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field private androidVersion:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field

.field private chestVersion:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x4
    .end annotation
.end field

.field private headerVersion:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x3
    .end annotation
.end field

.field private mIsFromClient:Z
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field

.field private sdSurplusVolume:J
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x6
    .end annotation
.end field

.field private sdTotalVolume:J
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x5
    .end annotation
.end field

.field private serviceVersion:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/ubtechinc/service/protocols/QuerySoftwareVersion;->androidVersion:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/ubtechinc/service/protocols/QuerySoftwareVersion;->serviceVersion:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/ubtechinc/service/protocols/QuerySoftwareVersion;->headerVersion:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/ubtechinc/service/protocols/QuerySoftwareVersion;->chestVersion:Ljava/lang/String;

    .line 29
    iput-wide v2, p0, Lcom/ubtechinc/service/protocols/QuerySoftwareVersion;->sdTotalVolume:J

    .line 32
    iput-wide v2, p0, Lcom/ubtechinc/service/protocols/QuerySoftwareVersion;->sdSurplusVolume:J

    return-void
.end method


# virtual methods
.method public getAndroidVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/QuerySoftwareVersion;->androidVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getChestVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/QuerySoftwareVersion;->chestVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/QuerySoftwareVersion;->headerVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSdSurplusVolume()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/ubtechinc/service/protocols/QuerySoftwareVersion;->sdSurplusVolume:J

    return-wide v0
.end method

.method public getSdTotalVolume()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/ubtechinc/service/protocols/QuerySoftwareVersion;->sdTotalVolume:J

    return-wide v0
.end method

.method public getServiceVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/QuerySoftwareVersion;->serviceVersion:Ljava/lang/String;

    return-object v0
.end method

.method public ismIsFromClient()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/ubtechinc/service/protocols/QuerySoftwareVersion;->mIsFromClient:Z

    return v0
.end method

.method public setAndroidVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "androidVersion"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/QuerySoftwareVersion;->androidVersion:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setChestVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "chestVersion"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/QuerySoftwareVersion;->chestVersion:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setHeaderVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "headerVersion"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/QuerySoftwareVersion;->headerVersion:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setSdSurplusVolume(J)V
    .locals 1
    .param p1, "sdSurplusVolume"    # J

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/ubtechinc/service/protocols/QuerySoftwareVersion;->sdSurplusVolume:J

    .line 70
    return-void
.end method

.method public setSdTotalVolume(J)V
    .locals 1
    .param p1, "sdTotalVolume"    # J

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/ubtechinc/service/protocols/QuerySoftwareVersion;->sdTotalVolume:J

    .line 64
    return-void
.end method

.method public setServiceVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceVersion"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/QuerySoftwareVersion;->serviceVersion:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setmIsFromClient(Z)V
    .locals 0
    .param p1, "mIsFromClient"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/ubtechinc/service/protocols/QuerySoftwareVersion;->mIsFromClient:Z

    .line 76
    return-void
.end method
