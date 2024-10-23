.class public Lai/api/ui/SoundLevelButton;
.super Lai/api/ui/MaskedColorView;
.source "SoundLevelButton.java"


# static fields
.field protected static final STATE_LISTENING:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final backgroundDrawable:Lai/api/ui/SoundLevelCircleDrawable;

.field protected listening:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const-class v0, Lai/api/ui/SoundLevelButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lai/api/ui/SoundLevelButton;->TAG:Ljava/lang/String;

    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lai/api/R$attr;->state_listening:I

    aput v2, v0, v1

    sput-object v0, Lai/api/ui/SoundLevelButton;->STATE_LISTENING:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lai/api/ui/MaskedColorView;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lai/api/ui/SoundLevelButton;->listening:Z

    .line 47
    new-instance v0, Lai/api/ui/SoundLevelCircleDrawable;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lai/api/ui/SoundLevelButton;->getParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lai/api/ui/SoundLevelCircleDrawable$Params;

    move-result-object v1

    invoke-direct {v0, v1}, Lai/api/ui/SoundLevelCircleDrawable;-><init>(Lai/api/ui/SoundLevelCircleDrawable$Params;)V

    iput-object v0, p0, Lai/api/ui/SoundLevelButton;->backgroundDrawable:Lai/api/ui/SoundLevelCircleDrawable;

    .line 48
    iget-object v0, p0, Lai/api/ui/SoundLevelButton;->backgroundDrawable:Lai/api/ui/SoundLevelCircleDrawable;

    invoke-direct {p0, v0}, Lai/api/ui/SoundLevelButton;->setCircleBackground(Lai/api/ui/SoundLevelCircleDrawable;)V

    .line 49
    invoke-direct {p0}, Lai/api/ui/SoundLevelButton;->init()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lai/api/ui/MaskedColorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lai/api/ui/SoundLevelButton;->listening:Z

    .line 55
    new-instance v0, Lai/api/ui/SoundLevelCircleDrawable;

    invoke-direct {p0, p1, p2}, Lai/api/ui/SoundLevelButton;->getParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lai/api/ui/SoundLevelCircleDrawable$Params;

    move-result-object v1

    invoke-direct {v0, v1}, Lai/api/ui/SoundLevelCircleDrawable;-><init>(Lai/api/ui/SoundLevelCircleDrawable$Params;)V

    iput-object v0, p0, Lai/api/ui/SoundLevelButton;->backgroundDrawable:Lai/api/ui/SoundLevelCircleDrawable;

    .line 56
    iget-object v0, p0, Lai/api/ui/SoundLevelButton;->backgroundDrawable:Lai/api/ui/SoundLevelCircleDrawable;

    invoke-direct {p0, v0}, Lai/api/ui/SoundLevelButton;->setCircleBackground(Lai/api/ui/SoundLevelCircleDrawable;)V

    .line 57
    invoke-direct {p0}, Lai/api/ui/SoundLevelButton;->init()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyle"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lai/api/ui/MaskedColorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lai/api/ui/SoundLevelButton;->listening:Z

    .line 63
    new-instance v0, Lai/api/ui/SoundLevelCircleDrawable;

    invoke-direct {p0, p1, p2}, Lai/api/ui/SoundLevelButton;->getParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lai/api/ui/SoundLevelCircleDrawable$Params;

    move-result-object v1

    invoke-direct {v0, v1}, Lai/api/ui/SoundLevelCircleDrawable;-><init>(Lai/api/ui/SoundLevelCircleDrawable$Params;)V

    iput-object v0, p0, Lai/api/ui/SoundLevelButton;->backgroundDrawable:Lai/api/ui/SoundLevelCircleDrawable;

    .line 64
    iget-object v0, p0, Lai/api/ui/SoundLevelButton;->backgroundDrawable:Lai/api/ui/SoundLevelCircleDrawable;

    invoke-direct {p0, v0}, Lai/api/ui/SoundLevelButton;->setCircleBackground(Lai/api/ui/SoundLevelCircleDrawable;)V

    .line 65
    invoke-direct {p0}, Lai/api/ui/SoundLevelButton;->init()V

    .line 66
    return-void
.end method

.method private getParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lai/api/ui/SoundLevelCircleDrawable$Params;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 83
    if-eqz p2, :cond_0

    .line 84
    sget-object v0, Lai/api/R$styleable;->SoundLevelButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 87
    .local v7, "viewAttrs":Landroid/content/res/TypedArray;
    :try_start_0
    sget v0, Lai/api/R$styleable;->SoundLevelButton_state_listening:I

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lai/api/ui/SoundLevelButton;->listening:Z

    .line 89
    sget v0, Lai/api/R$styleable;->SoundLevelButton_maxRadius:I

    const/high16 v8, -0x40800000    # -1.0f

    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 90
    .local v1, "maxRadius":F
    sget v0, Lai/api/R$styleable;->SoundLevelButton_minRadius:I

    const/high16 v8, -0x40800000    # -1.0f

    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 91
    .local v2, "minRadius":F
    sget v0, Lai/api/R$styleable;->SoundLevelButton_circleCenterX:I

    const/high16 v8, -0x40800000    # -1.0f

    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 92
    .local v3, "circleCenterX":F
    sget v0, Lai/api/R$styleable;->SoundLevelButton_circleCenterY:I

    const/high16 v8, -0x40800000    # -1.0f

    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 93
    .local v4, "circleCenterY":F
    sget v0, Lai/api/R$styleable;->SoundLevelButton_centerColor:I

    const v8, -0xd93d7

    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 94
    .local v5, "centerColor":I
    sget v0, Lai/api/R$styleable;->SoundLevelButton_haloColor:I

    sget v8, Lai/api/ui/SoundLevelCircleDrawable;->HALO_COLOR_DEF:I

    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 95
    .local v6, "haloColor":I
    new-instance v0, Lai/api/ui/SoundLevelCircleDrawable$Params;

    invoke-direct/range {v0 .. v6}, Lai/api/ui/SoundLevelCircleDrawable$Params;-><init>(FFFFII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    .end local v1    # "maxRadius":F
    .end local v2    # "minRadius":F
    .end local v3    # "circleCenterX":F
    .end local v4    # "circleCenterY":F
    .end local v5    # "centerColor":I
    .end local v6    # "haloColor":I
    .end local v7    # "viewAttrs":Landroid/content/res/TypedArray;
    :goto_0
    return-object v0

    .line 97
    .restart local v7    # "viewAttrs":Landroid/content/res/TypedArray;
    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 100
    .end local v7    # "viewAttrs":Landroid/content/res/TypedArray;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lai/api/ui/SoundLevelButton$1;

    invoke-direct {v0, p0}, Lai/api/ui/SoundLevelButton$1;-><init>(Lai/api/ui/SoundLevelButton;)V

    invoke-virtual {p0, v0}, Lai/api/ui/SoundLevelButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-void
.end method

.method private setCircleBackground(Lai/api/ui/SoundLevelCircleDrawable;)V
    .locals 2
    .param p1, "soundLevelCircleDrawable"    # Lai/api/ui/SoundLevelCircleDrawable;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 114
    invoke-virtual {p0, p1}, Lai/api/ui/SoundLevelButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-virtual {p0, p1}, Lai/api/ui/SoundLevelButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method protected getDebugState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lai/api/ui/MaskedColorView;->getDebugState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ndrawSL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lai/api/ui/SoundLevelButton;->listening:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getMinRadius()F
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lai/api/ui/SoundLevelButton;->backgroundDrawable:Lai/api/ui/SoundLevelCircleDrawable;

    invoke-virtual {v0}, Lai/api/ui/SoundLevelCircleDrawable;->getMinRadius()F

    move-result v0

    return v0
.end method

.method protected onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 79
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 105
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Lai/api/ui/MaskedColorView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 106
    .local v0, "state":[I
    iget-boolean v1, p0, Lai/api/ui/SoundLevelButton;->listening:Z

    if-eqz v1, :cond_0

    sget-object v1, Lai/api/ui/SoundLevelButton;->STATE_LISTENING:[I

    invoke-static {v0, v1}, Lai/api/ui/SoundLevelButton;->mergeDrawableStates([I[I)[I

    .line 107
    :cond_0
    return-object v0
.end method

.method protected setDrawCenter(Z)V
    .locals 1
    .param p1, "drawCenter"    # Z

    .prologue
    .line 127
    iget-object v0, p0, Lai/api/ui/SoundLevelButton;->backgroundDrawable:Lai/api/ui/SoundLevelCircleDrawable;

    invoke-virtual {v0, p1}, Lai/api/ui/SoundLevelCircleDrawable;->setDrawCenter(Z)V

    .line 128
    return-void
.end method

.method public setDrawSoundLevel(Z)V
    .locals 1
    .param p1, "drawSoundLevel"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lai/api/ui/SoundLevelButton;->listening:Z

    .line 121
    iget-object v0, p0, Lai/api/ui/SoundLevelButton;->backgroundDrawable:Lai/api/ui/SoundLevelCircleDrawable;

    invoke-virtual {v0, p1}, Lai/api/ui/SoundLevelCircleDrawable;->setDrawSoundLevel(Z)Z

    .line 122
    invoke-virtual {p0}, Lai/api/ui/SoundLevelButton;->refreshDrawableState()V

    .line 123
    invoke-virtual {p0}, Lai/api/ui/SoundLevelButton;->postInvalidate()V

    .line 124
    return-void
.end method

.method public setSoundLevel(F)V
    .locals 1
    .param p1, "soundLevel"    # F

    .prologue
    .line 131
    iget-object v0, p0, Lai/api/ui/SoundLevelButton;->backgroundDrawable:Lai/api/ui/SoundLevelCircleDrawable;

    invoke-virtual {v0, p1}, Lai/api/ui/SoundLevelCircleDrawable;->setSoundLevel(F)V

    .line 132
    invoke-virtual {p0}, Lai/api/ui/SoundLevelButton;->postInvalidate()V

    .line 133
    return-void
.end method
