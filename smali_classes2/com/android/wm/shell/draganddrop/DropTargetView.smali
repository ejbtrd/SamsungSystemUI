.class public Lcom/android/wm/shell/draganddrop/DropTargetView;
.super Landroid/widget/FrameLayout;
.source "DropTargetView.java"


# instance fields
.field private mCurrentDensityDpi:I

.field private mCurrentFontScale:F

.field private final mDisplaySize:Landroid/graphics/Point;

.field private mFreeformHeight:I

.field private mFreeformWidth:I

.field private mIsFreeform:Z

.field private mIsNightModeOn:Z

.field private mOrientation:I

.field private mPatialBlurView:Landroid/widget/ImageView;

.field private mText:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mDisplaySize:Landroid/graphics/Point;

    const/4 p2, 0x0

    .line 59
    iput-boolean p2, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mIsFreeform:Z

    .line 64
    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/DropTargetView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private getBackgroundResourceId()I
    .locals 1

    .line 131
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/DropTargetView;->isLandScapeWithNotMultiSplit()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mIsFreeform:Z

    if-eqz v0, :cond_1

    .line 132
    sget-boolean p0, Lcom/android/wm/shell/CoreShellRune;->MW_SUPPORT_DRAG_AND_DROP_PATIAL_BLUR:Z

    if-eqz p0, :cond_0

    .line 133
    sget p0, Lcom/android/wm/shell/R$drawable;->drag_area_blur_background_round_freeform_land:I

    goto :goto_0

    .line 134
    :cond_0
    sget p0, Lcom/android/wm/shell/R$drawable;->drag_area_background_round_freeform_land:I

    :goto_0
    return p0

    .line 136
    :cond_1
    sget-boolean v0, Lcom/android/wm/shell/CoreShellRune;->MW_SUPPORT_DRAG_AND_DROP_PATIAL_BLUR:Z

    if-eqz v0, :cond_3

    .line 137
    iget-boolean p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mIsFreeform:Z

    if-eqz p0, :cond_2

    sget p0, Lcom/android/wm/shell/R$drawable;->drag_area_blur_background_round_freeform:I

    goto :goto_1

    .line 138
    :cond_2
    sget p0, Lcom/android/wm/shell/R$drawable;->drag_area_blur_background_round:I

    :goto_1
    return p0

    .line 140
    :cond_3
    iget-boolean p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mIsFreeform:Z

    if-eqz p0, :cond_4

    sget p0, Lcom/android/wm/shell/R$drawable;->drag_area_background_round_freeform:I

    goto :goto_2

    .line 141
    :cond_4
    sget p0, Lcom/android/wm/shell/R$drawable;->drag_area_background:I

    :goto_2
    return p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p1, p0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-void
.end method

.method private isLandScapeWithNotMultiSplit()Z
    .locals 1

    .line 126
    iget p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mOrientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showBlurEffect(Lcom/android/wm/shell/draganddrop/DragAndDropOptions;I)V
    .locals 3

    .line 158
    invoke-virtual {p1}, Lcom/android/wm/shell/draganddrop/DragAndDropOptions;->isFreeform()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 159
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/DropTargetView;->isLandScapeWithNotMultiSplit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/wm/shell/R$drawable;->drag_area_shadow_background_round_freeform_land:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/wm/shell/R$drawable;->drag_area_shadow_background_round_freeform:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 171
    :goto_0
    sget-boolean v0, Lcom/android/wm/shell/CoreShellRune;->MW_SUPPORT_DRAG_AND_DROP_REAL_TIME_BLUR:Z

    if-eqz v0, :cond_2

    .line 172
    new-instance p1, Landroid/view/SemBlurInfo$Builder;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    const/16 p2, 0x7d

    .line 173
    invoke-virtual {p1, p2}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object p1

    .line 174
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/wm/shell/R$dimen;->dnd_drop_freeform_corner_radius_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    .line 173
    invoke-virtual {p1, p2}, Landroid/view/SemBlurInfo$Builder;->setBackgroundCornerRadius(F)Landroid/view/SemBlurInfo$Builder;

    move-result-object p1

    .line 174
    invoke-virtual {p1}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object v1

    goto :goto_1

    .line 175
    :cond_2
    sget-boolean v0, Lcom/android/wm/shell/CoreShellRune;->MW_SUPPORT_DRAG_AND_DROP_CAPTURED_BLUR:Z

    if-eqz v0, :cond_3

    .line 176
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/draganddrop/DropTargetView;->takeScreenShot(Lcom/android/wm/shell/draganddrop/DragAndDropOptions;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 177
    new-instance v0, Landroid/view/SemBlurInfo$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    const/16 v2, 0x50

    .line 178
    invoke-virtual {v0, v2}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/SemBlurInfo$Builder;->setBitmap(Landroid/graphics/Bitmap;)Landroid/view/SemBlurInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object p1

    .line 179
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mPatialBlurView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 180
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mPatialBlurView:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    move-object v1, p1

    .line 182
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mPatialBlurView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    return-void
.end method

.method private takeScreenShot(Lcom/android/wm/shell/draganddrop/DragAndDropOptions;I)Landroid/graphics/Bitmap;
    .locals 10

    const-string p2, "DropTargetView"

    const-string/jumbo v0, "take ScreenShot for blur background"

    .line 195
    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 198
    invoke-virtual {p1}, Lcom/android/wm/shell/draganddrop/DragAndDropOptions;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 200
    invoke-virtual {p1}, Lcom/android/wm/shell/draganddrop/DragAndDropOptions;->isFreeform()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 203
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mFreeformWidth:I

    sub-int/2addr p1, v0

    .line 204
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mFreeformHeight:I

    sub-int/2addr v0, v1

    .line 205
    div-int/lit8 p1, p1, 0x2

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v5, p1, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 208
    :cond_0
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 209
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v8, 0x0

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 210
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result v9

    const/16 v3, 0x7d0

    .line 208
    invoke-virtual/range {v1 .. v9}, Lcom/samsung/android/view/SemWindowManager;->screenshot(IIZLandroid/graphics/Rect;IIZI)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "bitmap is null !!!!"

    .line 213
    invoke-static {p2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method

.method private updateFreeformBounds()V
    .locals 2

    .line 101
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/DropTargetView;->isLandScapeWithNotMultiSplit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$dimen;->dnd_drop_freeform_dim_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mFreeformWidth:I

    .line 103
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$dimen;->dnd_drop_freeform_dim_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mFreeformHeight:I

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$dimen;->dnd_drop_freeform_dim_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mFreeformWidth:I

    .line 106
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$dimen;->dnd_drop_freeform_dim_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mFreeformHeight:I

    :goto_0
    return-void
.end method

.method private updateTextSizeWithScale()V
    .locals 2

    .line 220
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$dimen;->dnd_drop_target_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 221
    iget v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mCurrentFontScale:F

    invoke-static {v0, v1}, Lcom/android/wm/shell/draganddrop/DragAndDropUtil;->calculateFontSizeWithScale(FF)F

    move-result v0

    .line 222
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private updateViewLayout(Landroid/view/View;Z)V
    .locals 1

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 148
    iget p2, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mFreeformWidth:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 149
    iget p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mFreeformHeight:I

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    .line 151
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 152
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 154
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public bind(Lcom/android/wm/shell/draganddrop/DragAndDropOptions;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/wm/shell/draganddrop/DragAndDropOptions;->getDropTargetTextResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 86
    invoke-virtual {p1}, Lcom/android/wm/shell/draganddrop/DragAndDropOptions;->isFreeform()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mIsFreeform:Z

    .line 87
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/DropTargetView;->updateFreeformBounds()V

    .line 89
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mIsFreeform:Z

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/draganddrop/DropTargetView;->updateViewLayout(Landroid/view/View;Z)V

    .line 90
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mPatialBlurView:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mIsFreeform:Z

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/draganddrop/DropTargetView;->updateViewLayout(Landroid/view/View;Z)V

    .line 92
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/DropTargetView;->getBackgroundResourceId()I

    move-result v0

    .line 93
    sget-boolean v1, Lcom/android/wm/shell/CoreShellRune;->MW_SUPPORT_DRAG_AND_DROP_PATIAL_BLUR:Z

    if-eqz v1, :cond_0

    .line 94
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/draganddrop/DropTargetView;->showBlurEffect(Lcom/android/wm/shell/draganddrop/DragAndDropOptions;I)V

    .line 97
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public bindByNaturalSwitching(Landroid/graphics/Rect;)V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mText:Landroid/widget/TextView;

    sget v1, Lcom/android/wm/shell/R$string;->sidescreen_applist_switch_screen:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 113
    sget v0, Lcom/android/wm/shell/R$drawable;->drag_area_background:I

    .line 114
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 116
    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setX(F)V

    .line 117
    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setY(F)V

    .line 118
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 120
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 122
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 227
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 228
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mOrientation:I

    if-eq v0, v1, :cond_0

    .line 229
    iput v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mOrientation:I

    .line 230
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/DropTargetView;->updateFreeformBounds()V

    .line 233
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 234
    :goto_0
    iget-boolean v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mIsNightModeOn:Z

    if-eq v1, v0, :cond_2

    .line 235
    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mIsNightModeOn:Z

    .line 236
    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DropTargetView;->updateNightModeUI()V

    .line 238
    :cond_2
    iget v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mCurrentFontScale:F

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mCurrentDensityDpi:I

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v0, v2, :cond_4

    .line 239
    :cond_3
    iput v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mCurrentFontScale:F

    .line 240
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput p1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mCurrentDensityDpi:I

    .line 241
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/DropTargetView;->updateTextSizeWithScale()V

    :cond_4
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 73
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 74
    sget v0, Lcom/android/wm/shell/R$id;->dnd_drop_target_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mView:Landroid/view/View;

    .line 75
    sget v0, Lcom/android/wm/shell/R$id;->dnd_drop_target_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mText:Landroid/widget/TextView;

    .line 76
    sget v0, Lcom/android/wm/shell/R$id;->patial_blur_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mPatialBlurView:Landroid/widget/ImageView;

    .line 77
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mCurrentFontScale:F

    .line 78
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mCurrentDensityDpi:I

    .line 79
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mIsNightModeOn:Z

    .line 80
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mOrientation:I

    .line 81
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/DropTargetView;->updateTextSizeWithScale()V

    return-void
.end method

.method public updateBounds(Landroid/graphics/Rect;)V
    .locals 2

    .line 186
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setX(F)V

    .line 187
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setY(F)V

    .line 188
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 189
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 190
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 191
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateNightModeUI()V
    .locals 5

    .line 246
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/DropTargetView;->getBackgroundResourceId()I

    move-result v0

    .line 250
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 251
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 252
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mText:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/wm/shell/R$color;->drop_target_text_color:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 253
    sget-boolean v1, Lcom/android/wm/shell/CoreShellRune;->MW_SUPPORT_DRAG_AND_DROP_CAPTURED_BLUR:Z

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mPatialBlurView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 255
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mPatialBlurView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method
