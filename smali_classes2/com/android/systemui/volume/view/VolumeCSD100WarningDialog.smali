.class public Lcom/android/systemui/volume/view/VolumeCSD100WarningDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "VolumeCSD100WarningDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/samsung/systemui/splugins/volume/VolumeObservable;
.implements Lcom/samsung/systemui/splugins/volume/VolumeObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/statusbar/phone/SystemUIDialog;",
        "Landroid/content/DialogInterface$OnDismissListener;",
        "Landroid/content/DialogInterface$OnClickListener;",
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

.field private final mContext:Landroid/content/Context;

.field private mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

.field private mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mResources:Landroid/content/res/Resources;

.field private mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

.field private mStore:Lcom/android/systemui/volume/store/VolumePanelStore;


# direct methods
.method public static synthetic $r8$lambda$_sxDGnKSlDER-d-1PmO3Y0T_t-Y(Lcom/android/systemui/volume/view/VolumeCSD100WarningDialog;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeCSD100WarningDialog;->lambda$dispatch$1(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z57hQoSfMEpPcH2DaOgdn68Dwxk(Lcom/android/systemui/volume/view/VolumeCSD100WarningDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumeCSD100WarningDialog;->lambda$initWindow$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumeCSD100WarningDialog;->mObservers:Ljava/util/ArrayList;

    .line 54
    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeCSD100WarningDialog;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeCSD100WarningDialog;->mResources:Landroid/content/res/Resources;

    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/VolumeCSD100WarningDialog;->initDialog()V

    return-void
.end method

.method private synthetic lambda$dispatch$1(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 1

    .line 123
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeCSD100WarningDialog;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 124
    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeObserver;->onChanged(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$initWindow$0()V
    .locals 5

    .line 79
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeCSD100WarningDialog;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$dimen;->volume_warning_popup_margin_horizontal_clear_cover:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 80
    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumeCSD100WarningDialog;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->volume_warning_popup_margin_bottom_clear_cover:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 81
    iget-object v2, p0, Lcom/android/systemui/volume/view/VolumeCSD100WarningDialog;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/systemui/R$dimen;->navigation_bar_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 82
    iget-object v3, p0, Lcom/android/systemui/volume/view/VolumeCSD100WarningDialog;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v3, v0

    .line 84
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v4, -0x2

    invoke-virtual {v0, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 86
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    sub-int/2addr v1, v2

    .line 87
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 88
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 122
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeCSD100WarningDialog;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    new-instance v0, Lcom/android/systemui/volume/view/VolumeCSD100WarningDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/volume/view/VolumeCSD100WarningDialog$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/volume/view/VolumeCSD100WarningDialog;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    invoke-virtual {p2, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 128
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeCSD100WarningDialog;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 129
    invoke-interface {p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumeObserver;->onChanged(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public bridge synthetic dispatch(Ljava/lang/Object;Z)V
    .locals 0

    .line 40
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/view/VolumeCSD100WarningDialog;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public initDialog()V
    .locals 2

    .line 60
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7da

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    const/4 v0, 0x1

    .line 61
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Z)V

    .line 62
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeCSD100WarningDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->tw_volume_csd_100_warning:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeCSD100WarningDialog;->mContext:Landroid/content/Context;

    const v1, 0x1040013

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 64
    invoke-virtual {p0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public initWindow(Z)V
    .locals 2

    .line 75
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/view/VolumeCSD100WarningDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/VolumeCSD100WarningDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/volume/view/VolumeCSD100WarningDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 91
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x7e4

    invoke-virtual {p0, p1}, Landroid/view/Window;->setType(I)V

    :cond_0
    return-void
.end method

.method public onChanged(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 2

    .line 136
    sget-object v0, Lcom/android/systemui/volume/view/VolumeCSD100WarningDialog$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType:[I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 138
    :cond_1
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->COVER_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p1

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->TYPE_CLEAR_COVER:I

    if-eq p1, v0, :cond_2

    .line 139
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 40
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/VolumeCSD100WarningDialog;->onChanged(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 107
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_VOLUME_CSD_100_WARNING_DIALOG_OK_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const/4 v0, 0x1

    .line 108
    invoke-virtual {p1, p2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    const/4 p2, 0x0

    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/view/VolumeCSD100WarningDialog;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 97
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_DISMISS_VOLUME_CSD_100_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 98
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/volume/view/VolumeCSD100WarningDialog;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    .line 100
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeCSD100WarningDialog;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    invoke-interface {p1}, Lcom/samsung/systemui/splugins/volume/VolumeDisposable;->dispose()V

    .line 101
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeCSD100WarningDialog;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeDisposable;->dispose()V

    return-void
.end method

.method public setDependencies(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/android/systemui/volume/util/HandlerWrapper;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeCSD100WarningDialog;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 69
    iput-object p2, p0, Lcom/android/systemui/volume/view/VolumeCSD100WarningDialog;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 70
    invoke-virtual {p1, p0}, Lcom/android/systemui/volume/store/VolumePanelStore;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeCSD100WarningDialog;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 71
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeCSD100WarningDialog;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/VolumeCSD100WarningDialog;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeCSD100WarningDialog;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

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

    .line 115
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeCSD100WarningDialog;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeCSD100WarningDialog;->mObservers:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;-><init>(Ljava/util/ArrayList;Lcom/samsung/systemui/splugins/volume/VolumeObserver;)V

    return-object v0
.end method
