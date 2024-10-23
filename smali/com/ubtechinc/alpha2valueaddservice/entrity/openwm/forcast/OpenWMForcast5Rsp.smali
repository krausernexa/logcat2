.class public Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcast5Rsp;
.super Ljava/lang/Object;
.source "OpenWMForcast5Rsp.java"


# instance fields
.field private city:Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMCity;

.field private cnt:I

.field private cod:Ljava/lang/String;

.field private list:[Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMList;

.field private message:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCity()Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMCity;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcast5Rsp;->city:Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMCity;

    return-object v0
.end method

.method public getCnt()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcast5Rsp;->cnt:I

    return v0
.end method

.method public getCod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcast5Rsp;->cod:Ljava/lang/String;

    return-object v0
.end method

.method public getList()[Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMList;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcast5Rsp;->list:[Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMList;

    return-object v0
.end method

.method public getMessage()D
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcast5Rsp;->message:D

    return-wide v0
.end method

.method public setCity(Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMCity;)V
    .locals 0
    .param p1, "city"    # Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMCity;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcast5Rsp;->city:Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMCity;

    .line 49
    return-void
.end method

.method public setCnt(I)V
    .locals 0
    .param p1, "cnt"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcast5Rsp;->cnt:I

    .line 33
    return-void
.end method

.method public setCod(Ljava/lang/String;)V
    .locals 0
    .param p1, "cod"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcast5Rsp;->cod:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setList([Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMList;)V
    .locals 0
    .param p1, "list"    # [Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMList;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcast5Rsp;->list:[Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMList;

    .line 41
    return-void
.end method

.method public setMessage(D)V
    .locals 1
    .param p1, "message"    # D

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcast5Rsp;->message:D

    .line 25
    return-void
.end method
