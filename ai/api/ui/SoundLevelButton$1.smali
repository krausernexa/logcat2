.class Lai/api/ui/SoundLevelButton$1;
.super Ljava/lang/Object;
.source "SoundLevelButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lai/api/ui/SoundLevelButton;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lai/api/ui/SoundLevelButton;


# direct methods
.method constructor <init>(Lai/api/ui/SoundLevelButton;)V
    .locals 0
    .param p1, "this$0"    # Lai/api/ui/SoundLevelButton;

    .prologue
    .line 69
    iput-object p1, p0, Lai/api/ui/SoundLevelButton$1;->this$0:Lai/api/ui/SoundLevelButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 72
    iget-object v0, p0, Lai/api/ui/SoundLevelButton$1;->this$0:Lai/api/ui/SoundLevelButton;

    invoke-virtual {v0, p1}, Lai/api/ui/SoundLevelButton;->onClick(Landroid/view/View;)V

    .line 73
    return-void
.end method
