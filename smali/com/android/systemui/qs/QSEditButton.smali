.class public Lcom/android/systemui/qs/QSEditButton;
.super Landroid/widget/FrameLayout;
.source "QSEditButton.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mEditButton:Landroid/view/ViewGroup;

.field private mQsPanelController:Lcom/android/systemui/qs/QSPanelController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p1, p0, Lcom/android/systemui/qs/QSEditButton;->mContext:Landroid/content/Context;

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$layout;->qs_edit_button:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/qs/QSEditButton;->mEditButton:Landroid/view/ViewGroup;

    .line 34
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 36
    new-instance v0, Lcom/android/systemui/qs/QSEditButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSEditButton$1;-><init>(Lcom/android/systemui/qs/QSEditButton;)V

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->sec_more_button_menu_edit:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$string;->accessibility_button:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 52
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QSEditButton;)Lcom/android/systemui/qs/QSPanelController;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/android/systemui/qs/QSEditButton;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSEditButton;)Landroid/view/ViewGroup;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/android/systemui/qs/QSEditButton;->mEditButton:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private final exactly(I)I
    .locals 0

    const/high16 p0, 0x40000000    # 2.0f

    .line 60
    invoke-static {p1, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private final layout(Landroid/view/View;II)V
    .locals 1

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    add-int/2addr p0, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p1, p2, p3, p0, v0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 75
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    .line 77
    iget-object p2, p0, Lcom/android/systemui/qs/QSEditButton;->mEditButton:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    .line 78
    iget-object p2, p0, Lcom/android/systemui/qs/QSEditButton;->mEditButton:Landroid/view/ViewGroup;

    const/4 p3, 0x0

    invoke-direct {p0, p2, p1, p3}, Lcom/android/systemui/qs/QSEditButton;->layout(Landroid/view/View;II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 65
    iget-object p2, p0, Lcom/android/systemui/qs/QSEditButton;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getTileIconSize(Landroid/content/Context;)I

    move-result p2

    .line 66
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 67
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/QSEditButton;->exactly(I)I

    move-result p2

    .line 69
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditButton;->mEditButton:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2, p2}, Landroid/view/ViewGroup;->measure(II)V

    .line 70
    iget-object p2, p0, Lcom/android/systemui/qs/QSEditButton;->mEditButton:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public setQSPanelController(Lcom/android/systemui/qs/QSPanelController;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/systemui/qs/QSEditButton;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    return-void
.end method

.method public updateBackground()V
    .locals 5

    .line 86
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$color;->qs_edit_button_icon_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 87
    sget v2, Lcom/android/systemui/R$id;->edit_icon:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 88
    sget v3, Lcom/android/systemui/R$drawable;->ic_quickpanel_edit:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 91
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getTileIconSize(Landroid/content/Context;)I

    move-result v0

    .line 92
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->qs_edit_icon_stroke_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 93
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditButton;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 95
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditButton;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$color;->notification_panel_theme_ripple_color:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 97
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 98
    invoke-virtual {v4, v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    int-to-float v0, v0

    .line 99
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/16 v1, 0x8

    new-array v1, v1, [F

    .line 102
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([FF)V

    .line 103
    new-instance v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 104
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 105
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v0, v3, v4, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 108
    iget-object p0, p0, Lcom/android/systemui/qs/QSEditButton;->mEditButton:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
