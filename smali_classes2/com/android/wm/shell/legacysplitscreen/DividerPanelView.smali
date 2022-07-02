.class public Lcom/android/wm/shell/legacysplitscreen/DividerPanelView;
.super Landroid/widget/LinearLayout;
.source "DividerPanelView.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAppPairButton:Landroid/widget/ImageButton;

.field private mChangeDockSideButton:Landroid/widget/ImageButton;

.field private mCloseSystemDialogsListener:Lcom/android/wm/shell/legacysplitscreen/DividerPanel$OnCloseSystemDialogsListener;

.field private mContainer:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mSwapTaskButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string p2, "DividerPanelView"

    .line 35
    iput-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanelView;->TAG:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanelView;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method calculateWidth()I
    .locals 4

    .line 79
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanelView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 81
    iget-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanelView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$dimen;->mw_divider_panel_button_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 88
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/wm/shell/R$dimen;->mw_divider_panel_rounded_corner_width:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    mul-int/2addr v0, v2

    add-int/2addr p0, v0

    return p0
.end method

.method public onCloseSystemDialogs(Ljava/lang/String;)V
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DividerPanelView remove, reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DividerPanelView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanelView;->mCloseSystemDialogsListener:Lcom/android/wm/shell/legacysplitscreen/DividerPanel$OnCloseSystemDialogsListener;

    invoke-interface {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel$OnCloseSystemDialogsListener;->onCloseSystemDialogs()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 69
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 71
    sget v0, Lcom/android/wm/shell/R$id;->divider_panel_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanelView;->mContainer:Landroid/widget/LinearLayout;

    .line 72
    sget v0, Lcom/android/wm/shell/R$id;->mw_change_dock_side_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanelView;->mChangeDockSideButton:Landroid/widget/ImageButton;

    .line 73
    sget v0, Lcom/android/wm/shell/R$id;->mw_swap_task_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanelView;->mSwapTaskButton:Landroid/widget/ImageButton;

    .line 74
    sget v0, Lcom/android/wm/shell/R$id;->mw_addpair_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanelView;->mAppPairButton:Landroid/widget/ImageButton;

    return-void
.end method

.method public setOnCloseSystemDialogsListener(Lcom/android/wm/shell/legacysplitscreen/DividerPanel$OnCloseSystemDialogsListener;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanelView;->mCloseSystemDialogsListener:Lcom/android/wm/shell/legacysplitscreen/DividerPanel$OnCloseSystemDialogsListener;

    return-void
.end method

.method updateButton(ZZZZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 107
    sget p1, Lcom/android/wm/shell/R$drawable;->mw_divider_option_btn_switch_tb_mtrl:I

    goto :goto_0

    .line 109
    :cond_0
    sget p1, Lcom/android/wm/shell/R$drawable;->mw_divider_option_btn_switch_lr_mtr:I

    .line 111
    :goto_0
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanelView;->mSwapTaskButton:Landroid/widget/ImageButton;

    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    if-nez p3, :cond_1

    .line 115
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanelView;->mAppPairButton:Landroid/widget/ImageButton;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    return-void
.end method
