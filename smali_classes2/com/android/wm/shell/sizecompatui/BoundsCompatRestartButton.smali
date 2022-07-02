.class public Lcom/android/wm/shell/sizecompatui/BoundsCompatRestartButton;
.super Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;
.source "BoundsCompatRestartButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;->onClick(Landroid/view/View;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 54
    sget v0, Lcom/android/wm/shell/R$id;->bounds_compat_restart_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 55
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
