.class public Lcom/android/systemui/controls/ui/view/ControlTextView;
.super Landroid/widget/TextView;
.source "ControlTextView.kt"


# instance fields
.field private currentFontScale:F

.field private maxFontScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 14
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 11
    iput p1, p0, Lcom/android/systemui/controls/ui/view/ControlTextView;->maxFontScale:F

    .line 12
    iput p1, p0, Lcom/android/systemui/controls/ui/view/ControlTextView;->currentFontScale:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 11
    iput v0, p0, Lcom/android/systemui/controls/ui/view/ControlTextView;->maxFontScale:F

    .line 12
    iput v0, p0, Lcom/android/systemui/controls/ui/view/ControlTextView;->currentFontScale:F

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/ui/view/ControlTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "attr"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p3, 0x3f800000    # 1.0f

    .line 11
    iput p3, p0, Lcom/android/systemui/controls/ui/view/ControlTextView;->maxFontScale:F

    .line 12
    iput p3, p0, Lcom/android/systemui/controls/ui/view/ControlTextView;->currentFontScale:F

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/ui/view/ControlTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "attr"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 p3, 0x3f800000    # 1.0f

    .line 11
    iput p3, p0, Lcom/android/systemui/controls/ui/view/ControlTextView;->maxFontScale:F

    .line 12
    iput p3, p0, Lcom/android/systemui/controls/ui/view/ControlTextView;->currentFontScale:F

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/ui/view/ControlTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    sget-object v0, Lcom/android/systemui/R$styleable;->ControlAttr:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 39
    sget v0, Lcom/android/systemui/R$styleable;->ControlAttr_maxTextSize:I

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    .line 38
    iput p2, p0, Lcom/android/systemui/controls/ui/view/ControlTextView;->maxFontScale:F

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput p1, p0, Lcom/android/systemui/controls/ui/view/ControlTextView;->currentFontScale:F

    .line 42
    iget p2, p0, Lcom/android/systemui/controls/ui/view/ControlTextView;->maxFontScale:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    .line 43
    iput p2, p0, Lcom/android/systemui/controls/ui/view/ControlTextView;->currentFontScale:F

    .line 46
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr p1, p2

    const/4 p2, 0x1

    .line 47
    iget v0, p0, Lcom/android/systemui/controls/ui/view/ControlTextView;->currentFontScale:F

    mul-float/2addr p1, v0

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/controls/ui/view/ControlTextView;->setTextSize(IF)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 65
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    if-eqz p1, :cond_2

    .line 67
    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    iget v0, p0, Lcom/android/systemui/controls/ui/view/ControlTextView;->currentFontScale:F

    cmpg-float v0, p1, v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 68
    iput p1, p0, Lcom/android/systemui/controls/ui/view/ControlTextView;->currentFontScale:F

    .line 69
    iget v0, p0, Lcom/android/systemui/controls/ui/view/ControlTextView;->maxFontScale:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    .line 70
    iput v0, p0, Lcom/android/systemui/controls/ui/view/ControlTextView;->currentFontScale:F

    .line 72
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr p1, v0

    .line 73
    iget v0, p0, Lcom/android/systemui/controls/ui/view/ControlTextView;->currentFontScale:F

    mul-float/2addr p1, v0

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/controls/ui/view/ControlTextView;->setTextSize(IF)V

    :cond_2
    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    if-nez p1, :cond_0

    .line 55
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr p2, p1

    const/4 p1, 0x1

    .line 56
    iget v0, p0, Lcom/android/systemui/controls/ui/view/ControlTextView;->currentFontScale:F

    mul-float/2addr p2, v0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 59
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_0
    return-void
.end method
