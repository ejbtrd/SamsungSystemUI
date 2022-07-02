.class public final Lcom/android/systemui/media/IlluminationDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "IlluminationDrawable.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIlluminationDrawable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IlluminationDrawable.kt\ncom/android/systemui/media/IlluminationDrawable\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,218:1\n1819#2,2:219\n*E\n*S KotlinDebug\n*F\n+ 1 IlluminationDrawable.kt\ncom/android/systemui/media/IlluminationDrawable\n*L\n142#1,2:219\n*E\n"
.end annotation


# instance fields
.field private backgroundAnimation:Landroid/animation/ValueAnimator;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private backgroundColor:I

.field private cornerRadius:F

.field private cornerRadiusOverride:F

.field private highlight:F

.field private highlightColor:I

.field private final lightSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/media/LightSourceDrawable;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private paint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private themeAttrs:[I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private tmpHsl:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 52
    iput v0, p0, Lcom/android/systemui/media/IlluminationDrawable;->cornerRadiusOverride:F

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 62
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/media/IlluminationDrawable;->tmpHsl:[F

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/IlluminationDrawable;->paint:Landroid/graphics/Paint;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/IlluminationDrawable;->lightSources:Ljava/util/ArrayList;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static final synthetic access$getBackgroundColor$p(Lcom/android/systemui/media/IlluminationDrawable;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/android/systemui/media/IlluminationDrawable;->backgroundColor:I

    return p0
.end method

.method public static final synthetic access$getHighlightColor$p(Lcom/android/systemui/media/IlluminationDrawable;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/android/systemui/media/IlluminationDrawable;->highlightColor:I

    return p0
.end method

.method public static final synthetic access$getLightSources$p(Lcom/android/systemui/media/IlluminationDrawable;)Ljava/util/ArrayList;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/media/IlluminationDrawable;->lightSources:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getPaint$p(Lcom/android/systemui/media/IlluminationDrawable;)Landroid/graphics/Paint;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/media/IlluminationDrawable;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static final synthetic access$setBackgroundAnimation$p(Lcom/android/systemui/media/IlluminationDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/systemui/media/IlluminationDrawable;->backgroundAnimation:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static final synthetic access$setHighlightColor$p(Lcom/android/systemui/media/IlluminationDrawable;I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/android/systemui/media/IlluminationDrawable;->highlightColor:I

    return-void
.end method

.method private final animateBackground()V
    .locals 6

    .line 164
    iget v0, p0, Lcom/android/systemui/media/IlluminationDrawable;->backgroundColor:I

    iget-object v1, p0, Lcom/android/systemui/media/IlluminationDrawable;->tmpHsl:[F

    invoke-static {v0, v1}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 165
    iget-object v0, p0, Lcom/android/systemui/media/IlluminationDrawable;->tmpHsl:[F

    const/4 v1, 0x2

    aget v2, v0, v1

    .line 166
    iget v3, p0, Lcom/android/systemui/media/IlluminationDrawable;->highlight:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, v3

    cmpg-float v5, v2, v5

    if-gez v5, :cond_0

    add-float/2addr v2, v3

    goto :goto_0

    :cond_0
    sub-float/2addr v2, v3

    :goto_0
    const/4 v3, 0x0

    invoke-static {v2, v3, v4}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v2

    aput v2, v0, v1

    .line 172
    iget-object v0, p0, Lcom/android/systemui/media/IlluminationDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 173
    iget v2, p0, Lcom/android/systemui/media/IlluminationDrawable;->highlightColor:I

    .line 174
    iget-object v3, p0, Lcom/android/systemui/media/IlluminationDrawable;->tmpHsl:[F

    invoke-static {v3}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v3

    .line 176
    iget-object v4, p0, Lcom/android/systemui/media/IlluminationDrawable;->backgroundAnimation:Landroid/animation/ValueAnimator;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_1
    new-array v1, v1, [F

    .line 177
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v4, 0x172

    .line 178
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 179
    sget-object v4, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 180
    new-instance v4, Lcom/android/systemui/media/IlluminationDrawable$animateBackground$1$1;

    invoke-direct {v4, p0, v0, v2, v3}, Lcom/android/systemui/media/IlluminationDrawable$animateBackground$1$1;-><init>(Lcom/android/systemui/media/IlluminationDrawable;III)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 187
    new-instance v0, Lcom/android/systemui/media/IlluminationDrawable$animateBackground$1$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/IlluminationDrawable$animateBackground$1$2;-><init>(Lcom/android/systemui/media/IlluminationDrawable;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 192
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 193
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 177
    iput-object v1, p0, Lcom/android/systemui/media/IlluminationDrawable;->backgroundAnimation:Landroid/animation/ValueAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private final registerLightSource(Lcom/android/systemui/media/LightSourceDrawable;)V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/android/systemui/media/IlluminationDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/LightSourceDrawable;->setAlpha(I)V

    .line 211
    iget-object p0, p0, Lcom/android/systemui/media/IlluminationDrawable;->lightSources:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final setBackgroundColor(I)V
    .locals 1

    .line 69
    iget v0, p0, Lcom/android/systemui/media/IlluminationDrawable;->backgroundColor:I

    if-ne p1, v0, :cond_0

    return-void

    .line 72
    :cond_0
    iput p1, p0, Lcom/android/systemui/media/IlluminationDrawable;->backgroundColor:I

    .line 73
    invoke-direct {p0}, Lcom/android/systemui/media/IlluminationDrawable;->animateBackground()V

    return-void
.end method

.method private final updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 107
    sget v0, Lcom/android/systemui/R$styleable;->IlluminationDrawable_cornerRadius:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/media/IlluminationDrawable;->getCornerRadius()F

    move-result v1

    .line 108
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/media/IlluminationDrawable;->cornerRadius:F

    .line 111
    :cond_0
    sget v0, Lcom/android/systemui/R$styleable;->IlluminationDrawable_highlight:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 112
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/media/IlluminationDrawable;->highlight:F

    :cond_1
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1    # Landroid/content/res/Resources$Theme;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 123
    iget-object v0, p0, Lcom/android/systemui/media/IlluminationDrawable;->themeAttrs:[I

    if-nez v0, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    sget-object v1, Lcom/android/systemui/R$styleable;->IlluminationDrawable:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string v0, "a"

    .line 125
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/media/IlluminationDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 126
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :goto_0
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/systemui/media/IlluminationDrawable;->themeAttrs:[I

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v0, v0

    if-gtz v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v5, v0

    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/media/IlluminationDrawable;->getCornerRadius()F

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/media/IlluminationDrawable;->getCornerRadius()F

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/media/IlluminationDrawable;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    .line 82
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getAlpha()I
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/systemui/media/IlluminationDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    return p0
.end method

.method public final getCornerRadius()F
    .locals 2

    .line 55
    iget v0, p0, Lcom/android/systemui/media/IlluminationDrawable;->cornerRadiusOverride:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    iget v0, p0, Lcom/android/systemui/media/IlluminationDrawable;->cornerRadius:F

    :goto_0
    return v0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x2

    return p0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1    # Landroid/graphics/Outline;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "outline"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/media/IlluminationDrawable;->getCornerRadius()F

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 1
    .param p1    # Landroid/content/res/Resources;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/res/Resources$Theme;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string/jumbo v0, "r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parser"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "attrs"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    sget-object p2, Lcom/android/systemui/R$styleable;->IlluminationDrawable:[I

    invoke-static {p1, p4, p3, p2}, Landroid/graphics/drawable/Drawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/media/IlluminationDrawable;->themeAttrs:[I

    const-string p2, "a"

    .line 102
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/media/IlluminationDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 103
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final registerLightSource(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "lightSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/media/LightSourceDrawable;

    const-string v1, "null cannot be cast to non-null type com.android.systemui.media.LightSourceDrawable"

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/media/LightSourceDrawable;

    invoke-direct {p0, p1}, Lcom/android/systemui/media/IlluminationDrawable;->registerLightSource(Lcom/android/systemui/media/LightSourceDrawable;)V

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/media/LightSourceDrawable;

    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/media/LightSourceDrawable;

    invoke-direct {p0, p1}, Lcom/android/systemui/media/IlluminationDrawable;->registerLightSource(Lcom/android/systemui/media/LightSourceDrawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/systemui/media/IlluminationDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/IlluminationDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 140
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 142
    iget-object p0, p0, Lcom/android/systemui/media/IlluminationDrawable;->lightSources:Ljava/util/ArrayList;

    .line 1819
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/LightSourceDrawable;

    .line 142
    invoke-virtual {v0, p1}, Lcom/android/systemui/media/LightSourceDrawable;->setAlpha(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 131
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Color filters are not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setCornerRadius(F)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/android/systemui/media/IlluminationDrawable;->cornerRadius:F

    return-void
.end method

.method public final setCornerRadiusOverride(Ljava/lang/Float;)V
    .locals 0
    .param p1    # Ljava/lang/Float;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_0

    .line 216
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :goto_0
    iput p1, p0, Lcom/android/systemui/media/IlluminationDrawable;->cornerRadiusOverride:F

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 197
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 198
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/media/IlluminationDrawable;->setBackgroundColor(I)V

    return-void
.end method

.method public setXfermode(Landroid/graphics/Xfermode;)V
    .locals 1
    .param p1    # Landroid/graphics/Xfermode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 150
    iget-object v0, p0, Lcom/android/systemui/media/IlluminationDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/IlluminationDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 155
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
