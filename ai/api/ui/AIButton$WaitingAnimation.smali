.class Lai/api/ui/AIButton$WaitingAnimation;
.super Landroid/view/animation/Animation;
.source "AIButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/api/ui/AIButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaitingAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lai/api/ui/AIButton;


# direct methods
.method protected constructor <init>(Lai/api/ui/AIButton;)V
    .locals 2

    .prologue
    .line 365
    iput-object p1, p0, Lai/api/ui/AIButton$WaitingAnimation;->this$0:Lai/api/ui/AIButton;

    .line 366
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 367
    const-wide/16 v0, 0x5dc

    invoke-virtual {p0, v0, v1}, Lai/api/ui/AIButton$WaitingAnimation;->setDuration(J)V

    .line 368
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lai/api/ui/AIButton$WaitingAnimation;->setRepeatCount(I)V

    .line 369
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lai/api/ui/AIButton$WaitingAnimation;->setRepeatMode(I)V

    .line 370
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lai/api/ui/AIButton$WaitingAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 371
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 375
    iget-object v0, p0, Lai/api/ui/AIButton$WaitingAnimation;->this$0:Lai/api/ui/AIButton;

    invoke-static {v0, p1}, Lai/api/ui/AIButton;->access$102(Lai/api/ui/AIButton;F)F

    .line 376
    iget-object v0, p0, Lai/api/ui/AIButton$WaitingAnimation;->this$0:Lai/api/ui/AIButton;

    invoke-virtual {v0}, Lai/api/ui/AIButton;->invalidate()V

    .line 377
    return-void
.end method
