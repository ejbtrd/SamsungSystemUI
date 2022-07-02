.class final Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;
.super Ljava/lang/Object;
.source "SecSeekBarViewModel.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/media/SecSeekBarViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SeekBarTouchListener"
.end annotation


# instance fields
.field private final bar:Landroidx/appcompat/widget/SeslSeekBar;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final detector:Landroidx/core/view/GestureDetectorCompat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final flingVelocity:I

.field private shouldGoToSeekBar:Z

.field private final viewModel:Lcom/android/systemui/media/SecSeekBarViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/SecSeekBarViewModel;Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 1
    .param p1    # Lcom/android/systemui/media/SecSeekBarViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/appcompat/widget/SeslSeekBar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "viewModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bar"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    iput-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->viewModel:Lcom/android/systemui/media/SecSeekBarViewModel;

    .line 304
    iput-object p2, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->bar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 308
    new-instance p1, Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->detector:Landroidx/core/view/GestureDetectorCompat;

    .line 310
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 311
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p1

    mul-int/lit8 p1, p1, 0xa

    .line 310
    iput p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->flingVelocity:I

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->bar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v0

    .line 350
    iget-object v1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->bar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingRight()I

    move-result v1

    .line 353
    iget-object v2, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->bar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v2

    .line 354
    iget-object v3, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->bar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMax()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->bar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v4}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMin()I

    move-result v4

    sub-int/2addr v3, v4

    if-lez v3, :cond_0

    .line 356
    iget-object v4, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->bar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v4}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMin()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-double v4, v2

    int-to-double v2, v3

    div-double/2addr v4, v2

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    .line 360
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->bar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    .line 361
    iget-object v1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->bar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v1}, Landroid/view/View;->isLayoutRtl()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    int-to-double v0, v0

    int-to-double v6, v2

    int-to-double v8, v3

    sub-double/2addr v8, v4

    mul-double/2addr v6, v8

    goto :goto_1

    :cond_1
    int-to-double v0, v0

    int-to-double v6, v2

    mul-double/2addr v6, v4

    :goto_1
    add-double/2addr v0, v6

    .line 368
    iget-object v2, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->bar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 369
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    int-to-long v6, v2

    sub-long/2addr v4, v6

    long-to-int v2, v4

    .line 370
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    add-long/2addr v0, v6

    long-to-int v0, v0

    .line 373
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-lt p1, v2, :cond_2

    if-gt p1, v0, :cond_2

    move p1, v3

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 374
    :goto_2
    iput-boolean p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->shouldGoToSeekBar:Z

    if-eqz p1, :cond_4

    .line 376
    iget-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->bar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 378
    :cond_4
    :goto_3
    iget-boolean p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->shouldGoToSeekBar:Z

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "eventStart"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->flingVelocity:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-gtz p1, :cond_0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->flingVelocity:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    .line 417
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->viewModel:Lcom/android/systemui/media/SecSeekBarViewModel;

    invoke-virtual {p1}, Lcom/android/systemui/media/SecSeekBarViewModel;->onSeekFalse()V

    .line 419
    :cond_1
    iget-boolean p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->shouldGoToSeekBar:Z

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "event"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p3, "eventStart"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 402
    iget-boolean p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->shouldGoToSeekBar:Z

    return p0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "event"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 387
    iput-boolean p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->shouldGoToSeekBar:Z

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->bar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 335
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->detector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p1, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 336
    iget-boolean p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->shouldGoToSeekBar:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
