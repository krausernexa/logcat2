.class public Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWeather;
.super Ljava/lang/Object;
.source "OpenWMWeather.java"


# instance fields
.field private description:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private id:I

.field private main:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWeather;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWeather;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWeather;->id:I

    return v0
.end method

.method public getMain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWeather;->main:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWeather;->description:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "icon"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWeather;->icon:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 14
    iput p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWeather;->id:I

    .line 15
    return-void
.end method

.method public setMain(Ljava/lang/String;)V
    .locals 0
    .param p1, "main"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWeather;->main:Ljava/lang/String;

    .line 21
    return-void
.end method
