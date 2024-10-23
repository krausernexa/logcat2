.class Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer$OnErrorListener;
.super Ljava/lang/Object;
.source "PreviewPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnErrorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;


# direct methods
.method private constructor <init>(Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer$OnErrorListener;->this$0:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;
    .param p2, "x1"    # Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer$1;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer$OnErrorListener;-><init>(Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;)V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 109
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!! what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v0, 0x0

    return v0
.end method
