.class public Lai/api/ui/MaskedColorView;
.super Landroid/widget/ImageView;
.source "MaskedColorView.java"


# instance fields
.field private colorStateList:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput-object v0, p0, Lai/api/ui/MaskedColorView;->colorStateList:Landroid/content/res/ColorStateList;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    const v0, 0x1010072

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lai/api/ui/MaskedColorView;->colorStateList:Landroid/content/res/ColorStateList;

    .line 49
    invoke-direct {p0, p2}, Lai/api/ui/MaskedColorView;->configure(Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lai/api/ui/MaskedColorView;->colorStateList:Landroid/content/res/ColorStateList;

    .line 54
    invoke-direct {p0, p2}, Lai/api/ui/MaskedColorView;->configure(Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method private configure(Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 78
    if-eqz p1, :cond_1

    .line 79
    invoke-virtual {p0}, Lai/api/ui/MaskedColorView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lai/api/R$styleable;->MaskedColorView:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 81
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v2, Lai/api/R$styleable;->MaskedColorView_mainColor:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 82
    .local v1, "csl":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_0

    .line 83
    iput-object v1, p0, Lai/api/ui/MaskedColorView;->colorStateList:Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "csl":Landroid/content/res/ColorStateList;
    :cond_1
    return-void

    .line 86
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method

.method private getCurrentColor([I)I
    .locals 2
    .param p1, "stateSet"    # [I

    .prologue
    .line 72
    iget-object v0, p0, Lai/api/ui/MaskedColorView;->colorStateList:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    const v0, -0xff01

    .line 74
    :goto_0
    return v0

    .line 72
    :cond_0
    iget-object v0, p0, Lai/api/ui/MaskedColorView;->colorStateList:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lai/api/ui/MaskedColorView;->colorStateList:Landroid/content/res/ColorStateList;

    .line 74
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 60
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 61
    invoke-virtual {p0}, Lai/api/ui/MaskedColorView;->getDrawableState()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lai/api/ui/MaskedColorView;->getCurrentColor([I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Lai/api/ui/MaskedColorView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 63
    invoke-virtual {p0}, Lai/api/ui/MaskedColorView;->jumpDrawablesToCurrentState()V

    .line 65
    :cond_0
    return-void
.end method

.method protected getDebugState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "====\ncsl is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lai/api/ui/MaskedColorView;->colorStateList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    const-string v0, "NOT"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public setColorStateList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 68
    iput-object p1, p0, Lai/api/ui/MaskedColorView;->colorStateList:Landroid/content/res/ColorStateList;

    .line 69
    return-void
.end method
