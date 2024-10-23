.class public Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMWeatherSys;
.super Ljava/lang/Object;
.source "OpenWMWeatherSys.java"


# instance fields
.field private pod:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMWeatherSys;->pod:Ljava/lang/String;

    return-object v0
.end method

.method public setPod(Ljava/lang/String;)V
    .locals 0
    .param p1, "pod"    # Ljava/lang/String;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMWeatherSys;->pod:Ljava/lang/String;

    .line 13
    return-void
.end method
