.class Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic$1;
.super Landroid/os/Handler;
.source "RobotPlayMusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic;


# direct methods
.method constructor <init>(Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic$1;->this$0:Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 38
    iget-object v2, p0, Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic$1;->this$0:Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic;

    invoke-static {v2}, Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic;->access$000(Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    .line 39
    .local v1, "position":I
    iget-object v2, p0, Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic$1;->this$0:Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic;

    invoke-static {v2}, Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic;->access$000(Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 40
    .local v0, "duration":I
    if-lez v0, :cond_0

    .line 43
    :cond_0
    return-void
.end method
