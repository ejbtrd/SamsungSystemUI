.class public Lcom/android/systemui/screenshot/ScreenshotSelectorView;
.super Landroid/view/View;
.source "ScreenshotSelectorView.java"


# instance fields
.field private final mBlackDashedLine:Landroid/graphics/Paint;

.field private final mPaintBackground:Landroid/graphics/Paint;

.field private final mPaintSelection:Landroid/graphics/Paint;

.field private mSelectionRect:Landroid/graphics/Rect;

.field private mStartPoint:Landroid/graphics/Point;

.field private final mWhiteDashedLine:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance p1, Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mPaintBackground:Landroid/graphics/Paint;

    const/16 v0, 0xa0

    .line 51
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 52
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mPaintSelection:Landroid/graphics/Paint;

    .line 53
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 56
    sget v0, Lcom/android/systemui/R$dimen;->dashed_line_thickness:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 57
    sget v1, Lcom/android/systemui/R$dimen;->dashed_line_opaque_length:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 58
    sget v2, Lcom/android/systemui/R$dimen;->dashed_line_transparent_length:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 v2, -0x1

    .line 60
    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->createDashedLine(IIII)Landroid/graphics/Paint;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mWhiteDashedLine:Landroid/graphics/Paint;

    .line 61
    invoke-direct {p0, p2, v0, v1, p1}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->createDashedLine(IIII)Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mBlackDashedLine:Landroid/graphics/Paint;

    return-void
.end method

.method private createDashedLine(IIII)Landroid/graphics/Paint;
    .locals 3

    .line 65
    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    .line 66
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    int-to-float p3, p3

    const/4 v2, 0x0

    aput p3, v1, v2

    int-to-float p3, p4

    const/4 p4, 0x1

    aput p3, v1, p4

    const/4 p3, 0x0

    invoke-direct {v0, v1, p3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 68
    invoke-virtual {p0, p4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float p1, p2

    .line 71
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 72
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-object p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 103
    iget v0, p0, Landroid/view/View;->mLeft:I

    int-to-float v2, v0

    iget v0, p0, Landroid/view/View;->mTop:I

    int-to-float v3, v0

    iget v0, p0, Landroid/view/View;->mRight:I

    int-to-float v4, v0

    iget v0, p0, Landroid/view/View;->mBottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mPaintBackground:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 104
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 105
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mPaintSelection:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 106
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mBlackDashedLine:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 107
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mWhiteDashedLine:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public getSelectionRect()Landroid/graphics/Rect;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public startSelection(II)V
    .locals 1

    .line 78
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mStartPoint:Landroid/graphics/Point;

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    return-void
.end method

.method public stopSelection()V
    .locals 1

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mStartPoint:Landroid/graphics/Point;

    .line 98
    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    return-void
.end method

.method public updateSelection(II)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 84
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mStartPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 85
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mStartPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 86
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mStartPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 87
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mStartPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
