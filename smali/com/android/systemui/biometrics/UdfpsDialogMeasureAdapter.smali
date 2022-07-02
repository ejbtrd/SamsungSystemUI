.class public Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;
.super Ljava/lang/Object;
.source "UdfpsDialogMeasureAdapter.java"


# instance fields
.field private final mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

.field private final mView:Landroid/view/ViewGroup;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->mView:Landroid/view/ViewGroup;

    .line 52
    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    return-void
.end method

.method static calculateBottomSpacerHeightForLandscape(IIIIIII)I
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    add-int v0, p0, p1

    add-int/2addr v0, p2

    add-int/2addr v0, p3

    add-int v1, p4, p5

    sub-int/2addr v0, v1

    sub-int/2addr v0, p6

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Title height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", Subtitle height: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", Description height: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", Top spacer height: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", Text indicator height: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", Button bar height: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", Navbar bottom inset: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", Bottom spacer height (landscape): "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UdfpsDialogMeasurementAdapter"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method static calculateBottomSpacerHeightForPortrait(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;IIIII)I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 261
    iget v0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorLocationY:I

    sub-int v0, p1, v0

    iget p0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorRadius:I

    sub-int/2addr v0, p0

    sub-int p0, v0, p2

    sub-int/2addr p0, p3

    sub-int/2addr p0, p4

    sub-int/2addr p0, p5

    .line 271
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Display height: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Distance from bottom: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Bottom margin: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Navbar bottom inset: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Bottom spacer height (portrait): "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UdfpsDialogMeasurementAdapter"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method static calculateHorizontalSpacerWidthForLandscape(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;III)I
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 322
    iget v0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorLocationY:I

    sub-int v0, p1, v0

    iget p0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorRadius:I

    sub-int/2addr v0, p0

    sub-int p0, v0, p2

    sub-int/2addr p0, p3

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Distance from edge: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Dialog margin: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Navbar horizontal inset: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Horizontal spacer width (landscape): "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UdfpsDialogMeasurementAdapter"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private getDialogMarginPx()I
    .locals 1

    .line 223
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->mView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->biometric_dialog_border_padding:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private getNavbarInsets()Landroid/graphics/Insets;
    .locals 1

    .line 228
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 229
    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    .line 231
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p0

    goto :goto_0

    .line 232
    :cond_0
    sget-object p0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    :goto_0
    return-object p0
.end method

.method private getViewHeightPx(I)I
    .locals 1

    .line 218
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->mView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 219
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getWindowBounds()Landroid/graphics/Rect;
    .locals 1

    .line 237
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 238
    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_0

    .line 240
    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    :goto_0
    return-object p0
.end method

.method private getWindowManager()Landroid/view/WindowManager;
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->mWindowManager:Landroid/view/WindowManager;

    .line 248
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method private onMeasureInternalLandscape(II)Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;
    .locals 12

    .line 145
    sget p1, Lcom/android/systemui/R$id;->title:I

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->getViewHeightPx(I)I

    move-result v0

    .line 146
    sget p1, Lcom/android/systemui/R$id;->subtitle:I

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->getViewHeightPx(I)I

    move-result v1

    .line 147
    sget p1, Lcom/android/systemui/R$id;->description:I

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->getViewHeightPx(I)I

    move-result v2

    .line 148
    sget p1, Lcom/android/systemui/R$id;->space_above_icon:I

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->getViewHeightPx(I)I

    move-result v3

    .line 149
    sget p1, Lcom/android/systemui/R$id;->indicator:I

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->getViewHeightPx(I)I

    move-result v4

    .line 150
    sget p1, Lcom/android/systemui/R$id;->button_bar:I

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->getViewHeightPx(I)I

    move-result v5

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->getNavbarInsets()Landroid/graphics/Insets;

    move-result-object p1

    .line 152
    iget v6, p1, Landroid/graphics/Insets;->bottom:I

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->calculateBottomSpacerHeightForLandscape(IIIIIII)I

    move-result v0

    .line 157
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->getWindowBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 158
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->getDialogMarginPx()I

    move-result v2

    .line 159
    iget v3, p1, Landroid/graphics/Insets;->left:I

    iget p1, p1, Landroid/graphics/Insets;->right:I

    add-int/2addr v3, p1

    .line 160
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-static {p1, v1, v2, v3}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->calculateHorizontalSpacerWidthForLandscape(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;III)I

    move-result p1

    .line 163
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v1, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorRadius:I

    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v1

    .line 167
    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_5

    .line 169
    iget-object v6, p0, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 170
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v7

    sget v8, Lcom/android/systemui/R$id;->biometric_icon_frame:I

    const/high16 v9, -0x80000000

    const/high16 v10, 0x40000000    # 2.0f

    if-ne v7, v8, :cond_0

    .line 171
    move-object v7, v6

    check-cast v7, Landroid/widget/FrameLayout;

    .line 172
    invoke-virtual {v7, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 176
    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 177
    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 175
    invoke-virtual {v8, v11, v9}, Landroid/view/View;->measure(II)V

    .line 181
    invoke-static {p1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 182
    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 180
    invoke-virtual {v7, v8, v9}, Landroid/widget/FrameLayout;->measure(II)V

    goto :goto_1

    .line 183
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v7

    sget v8, Lcom/android/systemui/R$id;->space_above_icon:I

    if-ne v7, v8, :cond_1

    .line 185
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 186
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    sub-int/2addr v7, v8

    .line 188
    invoke-static {p1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 189
    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 187
    invoke-virtual {v6, v8, v7}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 190
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v7

    sget v8, Lcom/android/systemui/R$id;->button_bar:I

    if-ne v7, v8, :cond_2

    .line 193
    invoke-static {p1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 195
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 194
    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 192
    invoke-virtual {v6, v7, v8}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 196
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v7

    sget v8, Lcom/android/systemui/R$id;->space_below_icon:I

    if-ne v7, v8, :cond_3

    .line 198
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 200
    invoke-static {p1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 201
    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 199
    invoke-virtual {v6, v8, v7}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 205
    :cond_3
    invoke-static {p1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 206
    invoke-static {p2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 204
    invoke-virtual {v6, v7, v8}, Landroid/view/View;->measure(II)V

    .line 209
    :goto_1
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_4

    .line 210
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 214
    :cond_5
    new-instance p0, Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;

    invoke-direct {p0, p1, v5}, Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method private onMeasureInternalPortrait(II)Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;
    .locals 12

    .line 81
    sget v0, Lcom/android/systemui/R$id;->indicator:I

    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->getViewHeightPx(I)I

    move-result v3

    .line 82
    sget v0, Lcom/android/systemui/R$id;->button_bar:I

    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->getViewHeightPx(I)I

    move-result v4

    .line 86
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->getDialogMarginPx()I

    move-result v5

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->getWindowBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 88
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->getNavbarInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v6, v0, Landroid/graphics/Insets;->bottom:I

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->calculateBottomSpacerHeightForPortrait(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;IIIII)I

    move-result v0

    .line 95
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 96
    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v2, v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorRadius:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v1, :cond_5

    .line 98
    iget-object v6, p0, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 99
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v7

    sget v8, Lcom/android/systemui/R$id;->biometric_icon_frame:I

    const/high16 v9, -0x80000000

    const/high16 v10, 0x40000000    # 2.0f

    if-ne v7, v8, :cond_0

    .line 100
    move-object v7, v6

    check-cast v7, Landroid/widget/FrameLayout;

    .line 101
    invoke-virtual {v7, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 105
    invoke-static {v2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 106
    invoke-static {v2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 104
    invoke-virtual {v8, v11, v9}, Landroid/view/View;->measure(II)V

    .line 111
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 110
    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 112
    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 109
    invoke-virtual {v7, v8, v9}, Landroid/widget/FrameLayout;->measure(II)V

    goto :goto_1

    .line 113
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v7

    sget v8, Lcom/android/systemui/R$id;->space_above_icon:I

    if-ne v7, v8, :cond_1

    .line 115
    invoke-static {p1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 117
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 116
    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 114
    invoke-virtual {v6, v7, v8}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 118
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v7

    sget v8, Lcom/android/systemui/R$id;->button_bar:I

    if-ne v7, v8, :cond_2

    .line 120
    invoke-static {p1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 121
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 119
    invoke-virtual {v6, v7, v8}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 123
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v7

    sget v8, Lcom/android/systemui/R$id;->space_below_icon:I

    if-ne v7, v8, :cond_3

    .line 126
    invoke-static {p1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 127
    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 125
    invoke-virtual {v6, v7, v8}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 130
    :cond_3
    invoke-static {p1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 131
    invoke-static {p2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 129
    invoke-virtual {v6, v7, v8}, Landroid/view/View;->measure(II)V

    .line 134
    :goto_1
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_4

    .line 135
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 139
    :cond_5
    new-instance p0, Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;

    invoke-direct {p0, p1, v5}, Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;-><init>(II)V

    return-object p0
.end method


# virtual methods
.method getSensorProps()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    return-object p0
.end method

.method onMeasureInternal(IILcom/android/systemui/biometrics/AuthDialog$LayoutParams;)Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 72
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unsupported display rotation: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UdfpsDialogMeasurementAdapter"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p3

    .line 70
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->onMeasureInternalLandscape(II)Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;

    move-result-object p0

    return-object p0

    .line 67
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->onMeasureInternalPortrait(II)Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;

    move-result-object p0

    return-object p0
.end method
