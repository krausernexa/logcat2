.class public Lai/api/ui/SoundLevelCircleDrawable$Params;
.super Ljava/lang/Object;
.source "SoundLevelCircleDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/api/ui/SoundLevelCircleDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Params"
.end annotation


# instance fields
.field private final centerColor:I

.field public final circleCenterX:F

.field public final circleCenterY:F

.field private final haloColor:I

.field public final maxRadius:F

.field public final minRadius:F


# direct methods
.method public constructor <init>(FFFFII)V
    .locals 0
    .param p1, "maxRadius"    # F
    .param p2, "minRadius"    # F
    .param p3, "circleCenterX"    # F
    .param p4, "circleCenterY"    # F
    .param p5, "centerColor"    # I
    .param p6, "haloColor"    # I

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput p1, p0, Lai/api/ui/SoundLevelCircleDrawable$Params;->maxRadius:F

    .line 188
    iput p2, p0, Lai/api/ui/SoundLevelCircleDrawable$Params;->minRadius:F

    .line 189
    iput p3, p0, Lai/api/ui/SoundLevelCircleDrawable$Params;->circleCenterX:F

    .line 190
    iput p4, p0, Lai/api/ui/SoundLevelCircleDrawable$Params;->circleCenterY:F

    .line 191
    iput p5, p0, Lai/api/ui/SoundLevelCircleDrawable$Params;->centerColor:I

    .line 192
    iput p6, p0, Lai/api/ui/SoundLevelCircleDrawable$Params;->haloColor:I

    .line 193
    return-void
.end method

.method static synthetic access$000(Lai/api/ui/SoundLevelCircleDrawable$Params;)I
    .locals 1
    .param p0, "x0"    # Lai/api/ui/SoundLevelCircleDrawable$Params;

    .prologue
    .line 178
    iget v0, p0, Lai/api/ui/SoundLevelCircleDrawable$Params;->centerColor:I

    return v0
.end method

.method static synthetic access$100(Lai/api/ui/SoundLevelCircleDrawable$Params;)I
    .locals 1
    .param p0, "x0"    # Lai/api/ui/SoundLevelCircleDrawable$Params;

    .prologue
    .line 178
    iget v0, p0, Lai/api/ui/SoundLevelCircleDrawable$Params;->haloColor:I

    return v0
.end method
