.class public Lcom/android/systemui/volume/view/VolumeSeekBar;
.super Landroid/widget/SeekBar;
.source "VolumeSeekBar.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeObservable;
.implements Lcom/samsung/systemui/splugins/volume/VolumeObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/view/VolumeSeekBar$VolumeSeekbarChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/SeekBar;",
        "Lcom/samsung/systemui/splugins/volume/VolumeObservable<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelAction;",
        ">;",
        "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelState;",
        ">;"
    }
.end annotation


# instance fields
.field private mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

.field private mEnabled:Z

.field private mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

.field private mIsDragging:Z

.field private mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mProgress:I

.field private mProtectLevel:I

.field private mScaledTouchSlop:F

.field private mSeekbarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

.field private mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

.field private mStream:I

.field private mTouchedX:F


# direct methods
.method public static synthetic $r8$lambda$6q4GRx6nPMjPAXS50kdaMNVxICA(Lcom/android/systemui/volume/view/VolumeSeekBar;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeSeekBar;->lambda$dispatch$0(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeSeekBar;->mObservers:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lcom/android/systemui/volume/view/VolumeSeekBar;->mEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/volume/view/VolumeSeekBar;->mObservers:Ljava/util/ArrayList;

    const/4 p2, 0x1

    .line 39
    iput-boolean p2, p0, Lcom/android/systemui/volume/view/VolumeSeekBar;->mEnabled:Z

    .line 48
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/volume/view/VolumeSeekBar;->mScaledTouchSlop:F

    .line 50
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingBottom()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0, p2}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 51
    new-instance p1, Lcom/android/systemui/volume/view/VolumeSeekBar$VolumeSeekbarChangeListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/volume/view/VolumeSeekBar$VolumeSeekbarChangeListener;-><init>(Lcom/android/systemui/volume/view/VolumeSeekBar;Lcom/android/systemui/volume/view/VolumeSeekBar$1;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/VolumeSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/volume/view/VolumeSeekBar;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/android/systemui/volume/view/VolumeSeekBar;->mIsDragging:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/volume/view/VolumeSeekBar;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/android/systemui/volume/view/VolumeSeekBar;->mStream:I

    return p0
.end method

.method private synthetic lambda$dispatch$0(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 1

    .line 168
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeSeekBar;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 169
    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeObserver;->onChanged(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private trackTouchEvent(F)V
    .locals 2

    .line 132
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 136
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/volume/view/VolumeSeekBar;->mIsDragging:Z

    .line 138
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v0

    .line 139
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 142
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    .line 143
    iget v0, p0, Lcom/android/systemui/volume/view/VolumeSeekBar;->mProgress:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 144
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method


# virtual methods
.method public dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 167
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeSeekBar;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    new-instance v0, Lcom/android/systemui/volume/view/VolumeSeekBar$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/volume/view/VolumeSeekBar$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/volume/view/VolumeSeekBar;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    invoke-virtual {p2, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 173
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeSeekBar;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 174
    invoke-interface {p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumeObserver;->onChanged(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public bridge synthetic dispatch(Ljava/lang/Object;Z)V
    .locals 0

    .line 21
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/view/VolumeSeekBar;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public dispose()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeSeekBar;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 80
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeDisposable;->dispose()V

    .line 81
    iput-object v1, p0, Lcom/android/systemui/volume/view/VolumeSeekBar;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeSeekBar;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    if-eqz v0, :cond_1

    .line 85
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeDisposable;->dispose()V

    .line 86
    iput-object v1, p0, Lcom/android/systemui/volume/view/VolumeSeekBar;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    :cond_1
    return-void
.end method

.method public initialize(Lcom/android/systemui/volume/util/HandlerWrapper;Lcom/android/systemui/volume/store/VolumePanelStore;I)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeSeekBar;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 56
    iput-object p2, p0, Lcom/android/systemui/volume/view/VolumeSeekBar;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 57
    iput p3, p0, Lcom/android/systemui/volume/view/VolumeSeekBar;->mStream:I

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/volume/view/VolumeSeekBar;->mIsDragging:Z

    .line 60
    invoke-virtual {p2, p0}, Lcom/android/systemui/volume/store/VolumePanelStore;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeSeekBar;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 61
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeSeekBar;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/VolumeSeekBar;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeSeekBar;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    return-void
.end method

.method public onChanged(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 1

    .line 181
    sget-object v0, Lcom/android/systemui/volume/view/VolumeSeekBar$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType:[I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/VolumeSeekBar;->dispose()V

    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/VolumeSeekBar;->onChanged(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 74
    invoke-super {p0}, Landroid/widget/SeekBar;->onDetachedFromWindow()V

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/VolumeSeekBar;->dispose()V

    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    monitor-enter p0

    .line 149
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 92
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/VolumeSeekBar;->mEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 95
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    .line 128
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 106
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 107
    iget v0, p0, Lcom/android/systemui/volume/view/VolumeSeekBar;->mTouchedX:F

    sub-float/2addr p1, v0

    .line 108
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/VolumeSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_2

    .line 109
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeSeekBar;->trackTouchEvent(F)V

    goto :goto_0

    .line 110
    :cond_2
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/android/systemui/volume/view/VolumeSeekBar;->mScaledTouchSlop:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    .line 111
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeSeekBar;->trackTouchEvent(F)V

    .line 112
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SEEKBAR_START_PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget v3, p0, Lcom/android/systemui/volume/view/VolumeSeekBar;->mStream:I

    .line 113
    invoke-virtual {p1, v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    .line 112
    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/volume/view/VolumeSeekBar;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    :cond_3
    :goto_0
    return v1

    .line 120
    :cond_4
    iput-boolean v2, p0, Lcom/android/systemui/volume/view/VolumeSeekBar;->mIsDragging:Z

    .line 121
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeSeekBar;->mSeekbarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {p1, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 122
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SEEKBAR_TOUCH_UP:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget v2, p0, Lcom/android/systemui/volume/view/VolumeSeekBar;->mStream:I

    .line 123
    invoke-virtual {p1, v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    .line 124
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    .line 122
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/volume/view/VolumeSeekBar;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return v1

    .line 97
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/volume/view/VolumeSeekBar;->mTouchedX:F

    .line 98
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/volume/view/VolumeSeekBar;->mProgress:I

    .line 99
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeSeekBar;->mSeekbarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {p1, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 100
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SEEKBAR_TOUCH_DOWN:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget v3, p0, Lcom/android/systemui/volume/view/VolumeSeekBar;->mStream:I

    .line 101
    invoke-virtual {p1, v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    .line 100
    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/volume/view/VolumeSeekBar;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return v1
.end method

.method public setDualColorMode(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/android/systemui/volume/view/VolumeSeekBar;->mProtectLevel:I

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 154
    iput-boolean p1, p0, Lcom/android/systemui/volume/view/VolumeSeekBar;->mEnabled:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3f333333    # 0.7f

    .line 155
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setAlpha(F)V

    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeSeekBar;->mSeekbarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 192
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelAction;",
            ">;)",
            "Lcom/samsung/systemui/splugins/volume/VolumeDisposable;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeSeekBar;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeSeekBar;->mObservers:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;-><init>(Ljava/util/ArrayList;Lcom/samsung/systemui/splugins/volume/VolumeObserver;)V

    return-object v0
.end method
