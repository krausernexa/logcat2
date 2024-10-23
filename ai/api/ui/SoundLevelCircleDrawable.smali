.class public Lai/api/ui/SoundLevelCircleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SoundLevelCircleDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/api/ui/SoundLevelCircleDrawable$Params;
    }
.end annotation


# static fields
.field public static final CENTER_COLOR_DEF:I = -0xd93d7

.field public static final HALO_COLOR_DEF:I

.field private static final INITIAL_VALUE:F = 2.5f

.field private static final MAX_VALUE:F = 10.0f

.field private static final MIN_VALUE:F = 0.5f


# instance fields
.field private final bounds:Landroid/graphics/Rect;

.field private final circleCenterX:F

.field private final circleCenterY:F

.field private drawCenter:Z

.field private drawSoundLevel:Z

.field private maxMicLevel:F

.field private final maxRadius:F

.field private minMicLevel:F

.field private final minRadius:F

.field private final paintIndicatorCenter:Landroid/graphics/Paint;

.field private final paintIndicatorHalo:Landroid/graphics/Paint;

.field private smoothedLevel:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    const/16 v0, 0x10

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lai/api/ui/SoundLevelCircleDrawable;->HALO_COLOR_DEF:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lai/api/ui/SoundLevelCircleDrawable;-><init>(Lai/api/ui/SoundLevelCircleDrawable$Params;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lai/api/ui/SoundLevelCircleDrawable$Params;)V
    .locals 5
    .param p1, "params"    # Lai/api/ui/SoundLevelCircleDrawable$Params;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    .line 67
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 44
    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Lai/api/ui/SoundLevelCircleDrawable;->minMicLevel:F

    .line 45
    const/high16 v2, 0x41200000    # 10.0f

    iput v2, p0, Lai/api/ui/SoundLevelCircleDrawable;->maxMicLevel:F

    .line 47
    iput-boolean v4, p0, Lai/api/ui/SoundLevelCircleDrawable;->drawSoundLevel:Z

    .line 51
    const/high16 v2, 0x40200000    # 2.5f

    iput v2, p0, Lai/api/ui/SoundLevelCircleDrawable;->smoothedLevel:F

    .line 52
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lai/api/ui/SoundLevelCircleDrawable;->bounds:Landroid/graphics/Rect;

    .line 53
    iput-boolean v4, p0, Lai/api/ui/SoundLevelCircleDrawable;->drawCenter:Z

    .line 70
    if-eqz p1, :cond_0

    .line 71
    iget v2, p1, Lai/api/ui/SoundLevelCircleDrawable$Params;->maxRadius:F

    iput v2, p0, Lai/api/ui/SoundLevelCircleDrawable;->maxRadius:F

    .line 72
    iget v2, p1, Lai/api/ui/SoundLevelCircleDrawable$Params;->minRadius:F

    iput v2, p0, Lai/api/ui/SoundLevelCircleDrawable;->minRadius:F

    .line 73
    iget v2, p1, Lai/api/ui/SoundLevelCircleDrawable$Params;->circleCenterX:F

    iput v2, p0, Lai/api/ui/SoundLevelCircleDrawable;->circleCenterX:F

    .line 74
    iget v2, p1, Lai/api/ui/SoundLevelCircleDrawable$Params;->circleCenterY:F

    iput v2, p0, Lai/api/ui/SoundLevelCircleDrawable;->circleCenterY:F

    .line 75
    invoke-static {p1}, Lai/api/ui/SoundLevelCircleDrawable$Params;->access$000(Lai/api/ui/SoundLevelCircleDrawable$Params;)I

    move-result v0

    .line 76
    .local v0, "centerColor":I
    invoke-static {p1}, Lai/api/ui/SoundLevelCircleDrawable$Params;->access$100(Lai/api/ui/SoundLevelCircleDrawable$Params;)I

    move-result v1

    .line 85
    .local v1, "haloColor":I
    :goto_0
    invoke-static {v1}, Lai/api/ui/SoundLevelCircleDrawable;->newColorPaint(I)Landroid/graphics/Paint;

    move-result-object v2

    iput-object v2, p0, Lai/api/ui/SoundLevelCircleDrawable;->paintIndicatorHalo:Landroid/graphics/Paint;

    .line 86
    invoke-static {v0}, Lai/api/ui/SoundLevelCircleDrawable;->newColorPaint(I)Landroid/graphics/Paint;

    move-result-object v2

    iput-object v2, p0, Lai/api/ui/SoundLevelCircleDrawable;->paintIndicatorCenter:Landroid/graphics/Paint;

    .line 87
    return-void

    .line 78
    .end local v0    # "centerColor":I
    .end local v1    # "haloColor":I
    :cond_0
    iput v3, p0, Lai/api/ui/SoundLevelCircleDrawable;->maxRadius:F

    .line 79
    iput v3, p0, Lai/api/ui/SoundLevelCircleDrawable;->minRadius:F

    .line 80
    iput v3, p0, Lai/api/ui/SoundLevelCircleDrawable;->circleCenterX:F

    .line 81
    iput v3, p0, Lai/api/ui/SoundLevelCircleDrawable;->circleCenterY:F

    .line 82
    const v0, -0xd93d7

    .line 83
    .restart local v0    # "centerColor":I
    sget v1, Lai/api/ui/SoundLevelCircleDrawable;->HALO_COLOR_DEF:I

    .restart local v1    # "haloColor":I
    goto :goto_0
.end method

.method private static newColorPaint(I)Landroid/graphics/Paint;
    .locals 2
    .param p0, "color"    # I

    .prologue
    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 57
    .local v0, "paint":Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v11, 0x0

    .line 92
    iget-boolean v8, p0, Lai/api/ui/SoundLevelCircleDrawable;->drawSoundLevel:Z

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lai/api/ui/SoundLevelCircleDrawable;->drawCenter:Z

    if-eqz v8, :cond_6

    .line 93
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 95
    :try_start_0
    iget v8, p0, Lai/api/ui/SoundLevelCircleDrawable;->maxRadius:F

    cmpg-float v8, v8, v11

    if-ltz v8, :cond_1

    iget v8, p0, Lai/api/ui/SoundLevelCircleDrawable;->circleCenterX:F

    cmpg-float v8, v8, v11

    if-ltz v8, :cond_1

    iget v8, p0, Lai/api/ui/SoundLevelCircleDrawable;->circleCenterY:F

    cmpg-float v8, v8, v11

    if-gez v8, :cond_2

    .line 96
    :cond_1
    iget-object v8, p0, Lai/api/ui/SoundLevelCircleDrawable;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 98
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 99
    iget v8, p0, Lai/api/ui/SoundLevelCircleDrawable;->smoothedLevel:F

    iget v9, p0, Lai/api/ui/SoundLevelCircleDrawable;->minMicLevel:F

    sub-float/2addr v8, v9

    iget v9, p0, Lai/api/ui/SoundLevelCircleDrawable;->maxMicLevel:F

    iget v10, p0, Lai/api/ui/SoundLevelCircleDrawable;->minMicLevel:F

    sub-float/2addr v9, v10

    div-float v0, v8, v9

    .line 100
    .local v0, "levelInFraction":F
    iget v8, p0, Lai/api/ui/SoundLevelCircleDrawable;->maxRadius:F

    cmpg-float v8, v8, v11

    if-gez v8, :cond_7

    iget-object v8, p0, Lai/api/ui/SoundLevelCircleDrawable;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float v1, v8, v12

    .line 101
    .local v1, "maxRadius":F
    :goto_0
    iget v8, p0, Lai/api/ui/SoundLevelCircleDrawable;->minRadius:F

    cmpg-float v8, v8, v11

    if-gez v8, :cond_8

    const v8, 0x3f13e93f

    mul-float v2, v1, v8

    .line 102
    .local v2, "minRadius":F
    :goto_1
    const v8, 0x3f4ccccd    # 0.8f

    mul-float v4, v2, v8

    .line 103
    .local v4, "soundMinRadius":F
    sub-float v3, v1, v4

    .line 104
    .local v3, "rangeRadius":F
    mul-float v8, v3, v0

    add-float v5, v4, v8

    .line 105
    .local v5, "soundRadius":F
    iget v8, p0, Lai/api/ui/SoundLevelCircleDrawable;->circleCenterX:F

    cmpg-float v8, v8, v11

    if-gez v8, :cond_9

    iget-object v8, p0, Lai/api/ui/SoundLevelCircleDrawable;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float v6, v8, v12

    .line 106
    .local v6, "x":F
    :goto_2
    iget v8, p0, Lai/api/ui/SoundLevelCircleDrawable;->circleCenterY:F

    cmpg-float v8, v8, v11

    if-gez v8, :cond_a

    iget-object v8, p0, Lai/api/ui/SoundLevelCircleDrawable;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float v7, v8, v12

    .line 107
    .local v7, "y":F
    :goto_3
    iget-boolean v8, p0, Lai/api/ui/SoundLevelCircleDrawable;->drawSoundLevel:Z

    if-eqz v8, :cond_3

    .line 108
    iget-object v8, p0, Lai/api/ui/SoundLevelCircleDrawable;->paintIndicatorHalo:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v5, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 109
    :cond_3
    iget-boolean v8, p0, Lai/api/ui/SoundLevelCircleDrawable;->drawCenter:Z

    if-nez v8, :cond_4

    iget-boolean v8, p0, Lai/api/ui/SoundLevelCircleDrawable;->drawSoundLevel:Z

    if-eqz v8, :cond_5

    .line 110
    :cond_4
    iget-object v8, p0, Lai/api/ui/SoundLevelCircleDrawable;->paintIndicatorCenter:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v2, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 115
    .end local v0    # "levelInFraction":F
    .end local v1    # "maxRadius":F
    .end local v2    # "minRadius":F
    .end local v3    # "rangeRadius":F
    .end local v4    # "soundMinRadius":F
    .end local v5    # "soundRadius":F
    .end local v6    # "x":F
    .end local v7    # "y":F
    :cond_6
    return-void

    .line 100
    .restart local v0    # "levelInFraction":F
    :cond_7
    :try_start_1
    iget v1, p0, Lai/api/ui/SoundLevelCircleDrawable;->maxRadius:F

    goto :goto_0

    .line 101
    .restart local v1    # "maxRadius":F
    :cond_8
    iget v2, p0, Lai/api/ui/SoundLevelCircleDrawable;->minRadius:F

    goto :goto_1

    .line 105
    .restart local v2    # "minRadius":F
    .restart local v3    # "rangeRadius":F
    .restart local v4    # "soundMinRadius":F
    .restart local v5    # "soundRadius":F
    :cond_9
    iget v6, p0, Lai/api/ui/SoundLevelCircleDrawable;->circleCenterX:F

    goto :goto_2

    .line 106
    .restart local v6    # "x":F
    :cond_a
    iget v7, p0, Lai/api/ui/SoundLevelCircleDrawable;->circleCenterY:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 112
    .end local v0    # "levelInFraction":F
    .end local v1    # "maxRadius":F
    .end local v2    # "minRadius":F
    .end local v3    # "rangeRadius":F
    .end local v4    # "soundMinRadius":F
    .end local v5    # "soundRadius":F
    .end local v6    # "x":F
    :catchall_0
    move-exception v8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    throw v8
.end method

.method public getMinRadius()F
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lai/api/ui/SoundLevelCircleDrawable;->minRadius:F

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 129
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "ignored"    # I

    .prologue
    .line 120
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "ignored"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 125
    return-void
.end method

.method public setDrawCenter(Z)V
    .locals 0
    .param p1, "drawCenter"    # Z

    .prologue
    .line 150
    iput-boolean p1, p0, Lai/api/ui/SoundLevelCircleDrawable;->drawCenter:Z

    .line 151
    return-void
.end method

.method public setDrawSoundLevel(Z)Z
    .locals 1
    .param p1, "drawSoundLevel"    # Z

    .prologue
    .line 137
    iget-boolean v0, p0, Lai/api/ui/SoundLevelCircleDrawable;->drawSoundLevel:Z

    if-eq v0, p1, :cond_1

    .line 138
    iput-boolean p1, p0, Lai/api/ui/SoundLevelCircleDrawable;->drawSoundLevel:Z

    .line 139
    if-eqz p1, :cond_0

    .line 140
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lai/api/ui/SoundLevelCircleDrawable;->minMicLevel:F

    .line 141
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lai/api/ui/SoundLevelCircleDrawable;->maxMicLevel:F

    .line 142
    const/high16 v0, 0x40200000    # 2.5f

    iput v0, p0, Lai/api/ui/SoundLevelCircleDrawable;->smoothedLevel:F

    .line 144
    :cond_0
    const/4 v0, 0x1

    .line 146
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSoundLevel(F)V
    .locals 4
    .param p1, "soundLevel"    # F

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 154
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 156
    .local v1, "positiveSoundLevel":F
    iget v2, p0, Lai/api/ui/SoundLevelCircleDrawable;->minMicLevel:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    .line 157
    iget v2, p0, Lai/api/ui/SoundLevelCircleDrawable;->minMicLevel:F

    add-float/2addr v2, v1

    div-float/2addr v2, v3

    iput v2, p0, Lai/api/ui/SoundLevelCircleDrawable;->minMicLevel:F

    .line 160
    :cond_0
    iget v2, p0, Lai/api/ui/SoundLevelCircleDrawable;->maxMicLevel:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 161
    iget v2, p0, Lai/api/ui/SoundLevelCircleDrawable;->maxMicLevel:F

    add-float/2addr v2, v1

    div-float/2addr v2, v3

    iput v2, p0, Lai/api/ui/SoundLevelCircleDrawable;->maxMicLevel:F

    .line 164
    :cond_1
    const v0, 0x3e4ccccd    # 0.2f

    .line 165
    .local v0, "alpha":F
    iget v2, p0, Lai/api/ui/SoundLevelCircleDrawable;->smoothedLevel:F

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v3

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Lai/api/ui/SoundLevelCircleDrawable;->smoothedLevel:F

    .line 167
    iget v2, p0, Lai/api/ui/SoundLevelCircleDrawable;->smoothedLevel:F

    iget v3, p0, Lai/api/ui/SoundLevelCircleDrawable;->maxMicLevel:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 168
    iget v2, p0, Lai/api/ui/SoundLevelCircleDrawable;->maxMicLevel:F

    iput v2, p0, Lai/api/ui/SoundLevelCircleDrawable;->smoothedLevel:F

    .line 172
    :cond_2
    :goto_0
    return-void

    .line 169
    :cond_3
    iget v2, p0, Lai/api/ui/SoundLevelCircleDrawable;->smoothedLevel:F

    iget v3, p0, Lai/api/ui/SoundLevelCircleDrawable;->minMicLevel:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 170
    iget v2, p0, Lai/api/ui/SoundLevelCircleDrawable;->minMicLevel:F

    iput v2, p0, Lai/api/ui/SoundLevelCircleDrawable;->smoothedLevel:F

    goto :goto_0
.end method
