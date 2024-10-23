.class public Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcast5Sys;
.super Ljava/lang/Object;
.source "OpenWMForcast5Sys.java"


# instance fields
.field private population:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPopulation()J
    .locals 2

    .prologue
    .line 8
    iget-wide v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcast5Sys;->population:J

    return-wide v0
.end method

.method public setPopulation(J)V
    .locals 1
    .param p1, "pod"    # J

    .prologue
    .line 12
    iput-wide p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcast5Sys;->population:J

    .line 13
    return-void
.end method
