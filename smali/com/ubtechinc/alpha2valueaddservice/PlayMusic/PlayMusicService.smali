.class public Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/PlayMusicService;
.super Landroid/app/Service;
.source "PlayMusicService.java"


# instance fields
.field private rpm:Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 14
    new-instance v0, Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic;

    invoke-direct {v0}, Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/PlayMusicService;->rpm:Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic;

    .line 15
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 20
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/PlayMusicService;->rpm:Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic;

    invoke-virtual {v0}, Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic;->stop()V

    .line 21
    invoke-virtual {p0}, Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/PlayMusicService;->stopSelf()V

    .line 22
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 26
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
