.class public Lai/api/ui/AIButton;
.super Lai/api/ui/SoundLevelButton;
.source "AIButton.java"

# interfaces
.implements Lai/api/AIListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/api/ui/AIButton$WaitingAnimation;,
        Lai/api/ui/AIButton$MicState;,
        Lai/api/ui/AIButton$AIButtonListener;
    }
.end annotation


# static fields
.field protected static final STATE_INITIALIZING_TTS:[I

.field protected static final STATE_SPEAKING:[I

.field protected static final STATE_WAITING:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private aiService:Lai/api/AIService;

.field private final animation:Lai/api/ui/AIButton$WaitingAnimation;

.field private animationSecondPhase:Z

.field private animationStage:F

.field private volatile currentState:Lai/api/ui/AIButton$MicState;

.field private partialResultsListener:Lai/api/PartialResultsListener;

.field private resultsListener:Lai/api/ui/AIButton$AIButtonListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    const-class v0, Lai/api/ui/AIButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lai/api/ui/AIButton;->TAG:Ljava/lang/String;

    .line 61
    new-array v0, v3, [I

    sget v1, Lai/api/R$attr;->state_waiting:I

    aput v1, v0, v2

    sput-object v0, Lai/api/ui/AIButton;->STATE_WAITING:[I

    .line 62
    new-array v0, v3, [I

    sget v1, Lai/api/R$attr;->state_speaking:I

    aput v1, v0, v2

    sput-object v0, Lai/api/ui/AIButton;->STATE_SPEAKING:[I

    .line 63
    new-array v0, v3, [I

    sget v1, Lai/api/R$attr;->state_initializing_tts:I

    aput v1, v0, v2

    sput-object v0, Lai/api/ui/AIButton;->STATE_INITIALIZING_TTS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lai/api/ui/SoundLevelButton;-><init>(Landroid/content/Context;)V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lai/api/ui/AIButton;->animationStage:F

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lai/api/ui/AIButton;->animationSecondPhase:Z

    .line 67
    new-instance v0, Lai/api/ui/AIButton$WaitingAnimation;

    invoke-direct {v0, p0}, Lai/api/ui/AIButton$WaitingAnimation;-><init>(Lai/api/ui/AIButton;)V

    iput-object v0, p0, Lai/api/ui/AIButton;->animation:Lai/api/ui/AIButton$WaitingAnimation;

    .line 161
    sget-object v0, Lai/api/ui/AIButton$MicState;->normal:Lai/api/ui/AIButton$MicState;

    iput-object v0, p0, Lai/api/ui/AIButton;->currentState:Lai/api/ui/AIButton$MicState;

    .line 165
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lai/api/ui/AIButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 169
    invoke-direct {p0, p1, p2}, Lai/api/ui/SoundLevelButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lai/api/ui/AIButton;->animationStage:F

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lai/api/ui/AIButton;->animationSecondPhase:Z

    .line 67
    new-instance v0, Lai/api/ui/AIButton$WaitingAnimation;

    invoke-direct {v0, p0}, Lai/api/ui/AIButton$WaitingAnimation;-><init>(Lai/api/ui/AIButton;)V

    iput-object v0, p0, Lai/api/ui/AIButton;->animation:Lai/api/ui/AIButton$WaitingAnimation;

    .line 161
    sget-object v0, Lai/api/ui/AIButton$MicState;->normal:Lai/api/ui/AIButton$MicState;

    iput-object v0, p0, Lai/api/ui/AIButton;->currentState:Lai/api/ui/AIButton$MicState;

    .line 170
    invoke-direct {p0, p1, p2}, Lai/api/ui/AIButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 171
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 174
    invoke-direct {p0, p1, p2, p3}, Lai/api/ui/SoundLevelButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lai/api/ui/AIButton;->animationStage:F

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lai/api/ui/AIButton;->animationSecondPhase:Z

    .line 67
    new-instance v0, Lai/api/ui/AIButton$WaitingAnimation;

    invoke-direct {v0, p0}, Lai/api/ui/AIButton$WaitingAnimation;-><init>(Lai/api/ui/AIButton;)V

    iput-object v0, p0, Lai/api/ui/AIButton;->animation:Lai/api/ui/AIButton$WaitingAnimation;

    .line 161
    sget-object v0, Lai/api/ui/AIButton$MicState;->normal:Lai/api/ui/AIButton$MicState;

    iput-object v0, p0, Lai/api/ui/AIButton;->currentState:Lai/api/ui/AIButton$MicState;

    .line 175
    invoke-direct {p0, p1, p2}, Lai/api/ui/AIButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 176
    return-void
.end method

.method static synthetic access$000(Lai/api/ui/AIButton;)Lai/api/PartialResultsListener;
    .locals 1
    .param p0, "x0"    # Lai/api/ui/AIButton;

    .prologue
    .line 51
    iget-object v0, p0, Lai/api/ui/AIButton;->partialResultsListener:Lai/api/PartialResultsListener;

    return-object v0
.end method

.method static synthetic access$102(Lai/api/ui/AIButton;F)F
    .locals 0
    .param p0, "x0"    # Lai/api/ui/AIButton;
    .param p1, "x1"    # F

    .prologue
    .line 51
    iput p1, p0, Lai/api/ui/AIButton;->animationStage:F

    return p1
.end method

.method private cancelListening()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lai/api/ui/AIButton;->aiService:Lai/api/AIService;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lai/api/ui/AIButton;->currentState:Lai/api/ui/AIButton$MicState;

    sget-object v1, Lai/api/ui/AIButton$MicState;->normal:Lai/api/ui/AIButton$MicState;

    if-eq v0, v1, :cond_0

    .line 307
    iget-object v0, p0, Lai/api/ui/AIButton;->aiService:Lai/api/AIService;

    invoke-virtual {v0}, Lai/api/AIService;->cancel()V

    .line 308
    sget-object v0, Lai/api/ui/AIButton$MicState;->normal:Lai/api/ui/AIButton$MicState;

    invoke-virtual {p0, v0}, Lai/api/ui/AIButton;->changeState(Lai/api/ui/AIButton$MicState;)V

    .line 311
    :cond_0
    return-void
.end method

.method private static dpToPixels(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # F

    .prologue
    .line 408
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 409
    .local v0, "r":Landroid/content/res/Resources;
    const/4 v1, 0x1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 179
    if-eqz p2, :cond_0

    .line 180
    sget-object v1, Lai/api/R$styleable;->SoundLevelButton:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 182
    .local v0, "viewAttrs":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-static {v0}, Lai/api/ui/AIButton$MicState;->fromAttrs(Landroid/content/res/TypedArray;)Lai/api/ui/AIButton$MicState;

    move-result-object v1

    iput-object v1, p0, Lai/api/ui/AIButton;->currentState:Lai/api/ui/AIButton$MicState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 187
    .end local v0    # "viewAttrs":Landroid/content/res/TypedArray;
    :cond_0
    return-void

    .line 184
    .restart local v0    # "viewAttrs":Landroid/content/res/TypedArray;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private startProcessingAnimation()V
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lai/api/ui/AIButton;->setDrawCenter(Z)V

    .line 347
    const/4 v0, 0x0

    iput-boolean v0, p0, Lai/api/ui/AIButton;->animationSecondPhase:Z

    .line 348
    iget-object v0, p0, Lai/api/ui/AIButton;->animation:Lai/api/ui/AIButton$WaitingAnimation;

    invoke-virtual {p0, v0}, Lai/api/ui/AIButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 349
    return-void
.end method

.method private stopProcessingAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 352
    invoke-virtual {p0, v1}, Lai/api/ui/AIButton;->setDrawCenter(Z)V

    .line 353
    invoke-virtual {p0}, Lai/api/ui/AIButton;->clearAnimation()V

    .line 354
    const/4 v0, 0x0

    iput v0, p0, Lai/api/ui/AIButton;->animationStage:F

    .line 355
    iput-boolean v1, p0, Lai/api/ui/AIButton;->animationSecondPhase:Z

    .line 356
    invoke-virtual {p0}, Lai/api/ui/AIButton;->postInvalidate()V

    .line 357
    return-void
.end method


# virtual methods
.method protected changeState(Lai/api/ui/AIButton$MicState;)V
    .locals 3
    .param p1, "toState"    # Lai/api/ui/AIButton$MicState;

    .prologue
    const/4 v2, 0x0

    .line 314
    sget-object v0, Lai/api/ui/AIButton$7;->$SwitchMap$ai$api$ui$AIButton$MicState:[I

    invoke-virtual {p1}, Lai/api/ui/AIButton$MicState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 337
    :goto_0
    iput-object p1, p0, Lai/api/ui/AIButton;->currentState:Lai/api/ui/AIButton$MicState;

    .line 338
    invoke-virtual {p0}, Lai/api/ui/AIButton;->refreshDrawableState()V

    .line 339
    return-void

    .line 316
    :pswitch_0
    invoke-direct {p0}, Lai/api/ui/AIButton;->stopProcessingAnimation()V

    .line 317
    invoke-virtual {p0, v2}, Lai/api/ui/AIButton;->setDrawSoundLevel(Z)V

    goto :goto_0

    .line 320
    :pswitch_1
    invoke-direct {p0}, Lai/api/ui/AIButton;->startProcessingAnimation()V

    .line 321
    invoke-virtual {p0, v2}, Lai/api/ui/AIButton;->setDrawSoundLevel(Z)V

    goto :goto_0

    .line 324
    :pswitch_2
    invoke-direct {p0}, Lai/api/ui/AIButton;->stopProcessingAnimation()V

    .line 325
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lai/api/ui/AIButton;->setDrawSoundLevel(Z)V

    goto :goto_0

    .line 328
    :pswitch_3
    invoke-direct {p0}, Lai/api/ui/AIButton;->stopProcessingAnimation()V

    .line 329
    invoke-virtual {p0, v2}, Lai/api/ui/AIButton;->setDrawSoundLevel(Z)V

    goto :goto_0

    .line 332
    :pswitch_4
    invoke-direct {p0}, Lai/api/ui/AIButton;->stopProcessingAnimation()V

    .line 333
    invoke-virtual {p0, v2}, Lai/api/ui/AIButton;->setDrawSoundLevel(Z)V

    goto :goto_0

    .line 314
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getAIService()Lai/api/AIService;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lai/api/ui/AIButton;->aiService:Lai/api/AIService;

    return-object v0
.end method

.method protected getCurrentState()Lai/api/ui/AIButton$MicState;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lai/api/ui/AIButton;->currentState:Lai/api/ui/AIButton$MicState;

    return-object v0
.end method

.method protected getDebugState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lai/api/ui/SoundLevelButton;->getDebugState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nst:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lai/api/ui/AIButton;->currentState:Lai/api/ui/AIButton$MicState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Lai/api/AIConfiguration;)V
    .locals 2
    .param p1, "config"    # Lai/api/AIConfiguration;

    .prologue
    .line 190
    invoke-virtual {p0}, Lai/api/ui/AIButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lai/api/AIService;->getService(Landroid/content/Context;Lai/api/AIConfiguration;)Lai/api/AIService;

    move-result-object v0

    iput-object v0, p0, Lai/api/ui/AIButton;->aiService:Lai/api/AIService;

    .line 191
    iget-object v0, p0, Lai/api/ui/AIButton;->aiService:Lai/api/AIService;

    invoke-virtual {v0, p0}, Lai/api/AIService;->setListener(Lai/api/AIListener;)V

    .line 193
    iget-object v0, p0, Lai/api/ui/AIButton;->aiService:Lai/api/AIService;

    instance-of v0, v0, Lai/api/services/GoogleRecognitionServiceImpl;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lai/api/ui/AIButton;->aiService:Lai/api/AIService;

    check-cast v0, Lai/api/services/GoogleRecognitionServiceImpl;

    new-instance v1, Lai/api/ui/AIButton$6;

    invoke-direct {v1, p0}, Lai/api/ui/AIButton$6;-><init>(Lai/api/ui/AIButton;)V

    invoke-virtual {v0, v1}, Lai/api/services/GoogleRecognitionServiceImpl;->setPartialResultsListener(Lai/api/PartialResultsListener;)V

    .line 203
    :cond_0
    return-void
.end method

.method public onAudioLevel(F)V
    .locals 0
    .param p1, "level"    # F

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lai/api/ui/AIButton;->setSoundLevel(F)V

    .line 104
    return-void
.end method

.method protected onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 249
    invoke-super {p0, p1}, Lai/api/ui/SoundLevelButton;->onClick(Landroid/view/View;)V

    .line 251
    iget-object v0, p0, Lai/api/ui/AIButton;->aiService:Lai/api/AIService;

    if-eqz v0, :cond_0

    .line 252
    sget-object v0, Lai/api/ui/AIButton$7;->$SwitchMap$ai$api$ui$AIButton$MicState:[I

    iget-object v1, p0, Lai/api/ui/AIButton;->currentState:Lai/api/ui/AIButton$MicState;

    invoke-virtual {v1}, Lai/api/ui/AIButton$MicState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 260
    iget-object v0, p0, Lai/api/ui/AIButton;->aiService:Lai/api/AIService;

    invoke-virtual {v0}, Lai/api/AIService;->stopListening()V

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 254
    :pswitch_0
    iget-object v0, p0, Lai/api/ui/AIButton;->aiService:Lai/api/AIService;

    invoke-virtual {v0}, Lai/api/AIService;->startListening()V

    goto :goto_0

    .line 257
    :pswitch_1
    iget-object v0, p0, Lai/api/ui/AIButton;->aiService:Lai/api/AIService;

    invoke-virtual {v0}, Lai/api/AIService;->cancel()V

    goto :goto_0

    .line 252
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateDrawableState(I)[I
    .locals 3
    .param p1, "extraSpace"    # I

    .prologue
    .line 269
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Lai/api/ui/SoundLevelButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 270
    .local v0, "state":[I
    iget-object v1, p0, Lai/api/ui/AIButton;->currentState:Lai/api/ui/AIButton$MicState;

    if-eqz v1, :cond_0

    .line 271
    sget-object v1, Lai/api/ui/AIButton$7;->$SwitchMap$ai$api$ui$AIButton$MicState:[I

    iget-object v2, p0, Lai/api/ui/AIButton;->currentState:Lai/api/ui/AIButton$MicState;

    invoke-virtual {v2}, Lai/api/ui/AIButton$MicState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 288
    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    .line 275
    :pswitch_1
    sget-object v1, Lai/api/ui/AIButton;->STATE_WAITING:[I

    invoke-static {v0, v1}, Lai/api/ui/AIButton;->mergeDrawableStates([I[I)[I

    goto :goto_0

    .line 278
    :pswitch_2
    sget-object v1, Lai/api/ui/AIButton;->STATE_LISTENING:[I

    invoke-static {v0, v1}, Lai/api/ui/AIButton;->mergeDrawableStates([I[I)[I

    goto :goto_0

    .line 281
    :pswitch_3
    sget-object v1, Lai/api/ui/AIButton;->STATE_SPEAKING:[I

    invoke-static {v0, v1}, Lai/api/ui/AIButton;->mergeDrawableStates([I[I)[I

    goto :goto_0

    .line 284
    :pswitch_4
    sget-object v1, Lai/api/ui/AIButton;->STATE_INITIALIZING_TTS:[I

    invoke-static {v0, v1}, Lai/api/ui/AIButton;->mergeDrawableStates([I[I)[I

    goto :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 382
    invoke-super {p0, p1}, Lai/api/ui/SoundLevelButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 383
    iget v0, p0, Lai/api/ui/AIButton;->animationStage:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lai/api/ui/AIButton;->animationSecondPhase:Z

    if-eqz v0, :cond_1

    .line 384
    :cond_0
    invoke-virtual {p0}, Lai/api/ui/AIButton;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v6, v0, v2

    .line 385
    .local v6, "center":F
    invoke-virtual {p0}, Lai/api/ui/AIButton;->getMinRadius()F

    move-result v0

    const/high16 v2, 0x3fa00000    # 1.25f

    mul-float v7, v0, v2

    .line 386
    .local v7, "radius":F
    new-instance v1, Landroid/graphics/RectF;

    sub-float v0, v6, v7

    sub-float v2, v6, v7

    add-float v4, v6, v7

    add-float v9, v6, v7

    invoke-direct {v1, v0, v2, v4, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 387
    .local v1, "size":Landroid/graphics/RectF;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 388
    .local v5, "paint":Landroid/graphics/Paint;
    invoke-virtual {p0}, Lai/api/ui/AIButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lai/api/R$color;->icon_orange_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 389
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 390
    invoke-virtual {p0}, Lai/api/ui/AIButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v0, v2}, Lai/api/ui/AIButton;->dpToPixels(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 391
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 392
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 395
    iget v0, p0, Lai/api/ui/AIButton;->animationStage:F

    float-to-double v10, v0

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v10, v12

    if-gez v0, :cond_2

    iget-boolean v0, p0, Lai/api/ui/AIButton;->animationSecondPhase:Z

    if-nez v0, :cond_2

    .line 396
    const/4 v8, 0x0

    .line 397
    .local v8, "startingAngle":F
    iget v0, p0, Lai/api/ui/AIButton;->animationStage:F

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float v3, v0, v2

    .line 403
    .local v3, "sweepAngle":F
    :goto_0
    const/high16 v0, 0x43870000    # 270.0f

    add-float v2, v0, v8

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 405
    .end local v1    # "size":Landroid/graphics/RectF;
    .end local v3    # "sweepAngle":F
    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v6    # "center":F
    .end local v7    # "radius":F
    .end local v8    # "startingAngle":F
    :cond_1
    return-void

    .line 399
    .restart local v1    # "size":Landroid/graphics/RectF;
    .restart local v5    # "paint":Landroid/graphics/Paint;
    .restart local v6    # "center":F
    .restart local v7    # "radius":F
    :cond_2
    iget v0, p0, Lai/api/ui/AIButton;->animationStage:F

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v0, v2

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float v8, v0, v2

    .line 400
    .restart local v8    # "startingAngle":F
    const/high16 v3, 0x43340000    # 180.0f

    .line 401
    .restart local v3    # "sweepAngle":F
    const/4 v0, 0x1

    iput-boolean v0, p0, Lai/api/ui/AIButton;->animationSecondPhase:Z

    goto :goto_0
.end method

.method public onError(Lai/api/model/AIError;)V
    .locals 1
    .param p1, "error"    # Lai/api/model/AIError;

    .prologue
    .line 89
    new-instance v0, Lai/api/ui/AIButton$2;

    invoke-direct {v0, p0}, Lai/api/ui/AIButton$2;-><init>(Lai/api/ui/AIButton;)V

    invoke-virtual {p0, v0}, Lai/api/ui/AIButton;->post(Ljava/lang/Runnable;)Z

    .line 96
    iget-object v0, p0, Lai/api/ui/AIButton;->resultsListener:Lai/api/ui/AIButton$AIButtonListener;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lai/api/ui/AIButton;->resultsListener:Lai/api/ui/AIButton$AIButtonListener;

    invoke-interface {v0, p1}, Lai/api/ui/AIButton$AIButtonListener;->onError(Lai/api/model/AIError;)V

    .line 99
    :cond_0
    return-void
.end method

.method public onListeningCanceled()V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lai/api/ui/AIButton$4;

    invoke-direct {v0, p0}, Lai/api/ui/AIButton$4;-><init>(Lai/api/ui/AIButton;)V

    invoke-virtual {p0, v0}, Lai/api/ui/AIButton;->post(Ljava/lang/Runnable;)Z

    .line 125
    iget-object v0, p0, Lai/api/ui/AIButton;->resultsListener:Lai/api/ui/AIButton$AIButtonListener;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lai/api/ui/AIButton;->resultsListener:Lai/api/ui/AIButton$AIButtonListener;

    invoke-interface {v0}, Lai/api/ui/AIButton$AIButtonListener;->onCancelled()V

    .line 128
    :cond_0
    return-void
.end method

.method public onListeningFinished()V
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lai/api/ui/AIButton$5;

    invoke-direct {v0, p0}, Lai/api/ui/AIButton$5;-><init>(Lai/api/ui/AIButton;)V

    invoke-virtual {p0, v0}, Lai/api/ui/AIButton;->post(Ljava/lang/Runnable;)Z

    .line 138
    return-void
.end method

.method public onListeningStarted()V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lai/api/ui/AIButton$3;

    invoke-direct {v0, p0}, Lai/api/ui/AIButton$3;-><init>(Lai/api/ui/AIButton;)V

    invoke-virtual {p0, v0}, Lai/api/ui/AIButton;->post(Ljava/lang/Runnable;)Z

    .line 114
    return-void
.end method

.method public onResult(Lai/api/model/AIResponse;)V
    .locals 1
    .param p1, "result"    # Lai/api/model/AIResponse;

    .prologue
    .line 75
    new-instance v0, Lai/api/ui/AIButton$1;

    invoke-direct {v0, p0}, Lai/api/ui/AIButton$1;-><init>(Lai/api/ui/AIButton;)V

    invoke-virtual {p0, v0}, Lai/api/ui/AIButton;->post(Ljava/lang/Runnable;)Z

    .line 82
    iget-object v0, p0, Lai/api/ui/AIButton;->resultsListener:Lai/api/ui/AIButton$AIButtonListener;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lai/api/ui/AIButton;->resultsListener:Lai/api/ui/AIButton$AIButtonListener;

    invoke-interface {v0, p1}, Lai/api/ui/AIButton$AIButtonListener;->onResult(Lai/api/model/AIResponse;)V

    .line 85
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 298
    invoke-direct {p0}, Lai/api/ui/AIButton;->cancelListening()V

    .line 299
    iget-object v0, p0, Lai/api/ui/AIButton;->aiService:Lai/api/AIService;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lai/api/ui/AIButton;->aiService:Lai/api/AIService;

    invoke-virtual {v0}, Lai/api/AIService;->pause()V

    .line 302
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lai/api/ui/AIButton;->aiService:Lai/api/AIService;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lai/api/ui/AIButton;->aiService:Lai/api/AIService;

    invoke-virtual {v0}, Lai/api/AIService;->resume()V

    .line 295
    :cond_0
    return-void
.end method

.method public setPartialResultsListener(Lai/api/PartialResultsListener;)V
    .locals 0
    .param p1, "partialResultsListener"    # Lai/api/PartialResultsListener;

    .prologue
    .line 210
    iput-object p1, p0, Lai/api/ui/AIButton;->partialResultsListener:Lai/api/PartialResultsListener;

    .line 211
    return-void
.end method

.method public setResultsListener(Lai/api/ui/AIButton$AIButtonListener;)V
    .locals 0
    .param p1, "resultsListener"    # Lai/api/ui/AIButton$AIButtonListener;

    .prologue
    .line 206
    iput-object p1, p0, Lai/api/ui/AIButton;->resultsListener:Lai/api/ui/AIButton$AIButtonListener;

    .line 207
    return-void
.end method

.method public startListening()V
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lai/api/ui/AIButton;->startListening(Lai/api/RequestExtras;)V

    .line 215
    return-void
.end method

.method public startListening(Lai/api/RequestExtras;)V
    .locals 2
    .param p1, "requestExtras"    # Lai/api/RequestExtras;

    .prologue
    .line 218
    iget-object v0, p0, Lai/api/ui/AIButton;->aiService:Lai/api/AIService;

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lai/api/ui/AIButton;->currentState:Lai/api/ui/AIButton$MicState;

    sget-object v1, Lai/api/ui/AIButton$MicState;->normal:Lai/api/ui/AIButton$MicState;

    if-ne v0, v1, :cond_0

    .line 220
    iget-object v0, p0, Lai/api/ui/AIButton;->aiService:Lai/api/AIService;

    invoke-virtual {v0, p1}, Lai/api/AIService;->startListening(Lai/api/RequestExtras;)V

    .line 225
    :cond_0
    return-void

    .line 223
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call initialize method before usage"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public textRequest(Lai/api/model/AIRequest;)Lai/api/model/AIResponse;
    .locals 2
    .param p1, "request"    # Lai/api/model/AIRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/api/AIServiceException;
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lai/api/ui/AIButton;->aiService:Lai/api/AIService;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lai/api/ui/AIButton;->aiService:Lai/api/AIService;

    invoke-virtual {v0, p1}, Lai/api/AIService;->textRequest(Lai/api/model/AIRequest;)Lai/api/model/AIResponse;

    move-result-object v0

    return-object v0

    .line 231
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call initialize method before usage"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public textRequest(Ljava/lang/String;)Lai/api/model/AIResponse;
    .locals 1
    .param p1, "request"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/api/AIServiceException;
        }
    .end annotation

    .prologue
    .line 236
    new-instance v0, Lai/api/model/AIRequest;

    invoke-direct {v0, p1}, Lai/api/model/AIRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lai/api/ui/AIButton;->textRequest(Lai/api/model/AIRequest;)Lai/api/model/AIResponse;

    move-result-object v0

    return-object v0
.end method
