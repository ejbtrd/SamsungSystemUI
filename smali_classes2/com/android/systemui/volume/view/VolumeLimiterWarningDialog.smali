.class public Lcom/android/systemui/volume/view/VolumeLimiterWarningDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "VolumeLimiterWarningDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/samsung/systemui/splugins/volume/VolumeObservable;
.implements Lcom/samsung/systemui/splugins/volume/VolumeObserver;
.implements Landroid/content/DialogInterface$OnKeyListener;


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
        ">;",
        "Landroid/content/DialogInterface$OnKeyListener;"
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

.field private mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

.field private mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

.field private mToastWrapper:Lcom/android/systemui/volume/util/ToastWrapper;


# direct methods
.method public static synthetic $r8$lambda$Bf1Vs1LLiEqtTvzFzeIJYByuw14(Lcom/android/systemui/volume/view/VolumeLimiterWarningDialog;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeLimiterWarningDialog;->lambda$dispatch$0(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumeLimiterWarningDialog;->mObservers:Ljava/util/ArrayList;

    .line 40
    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeLimiterWarningDialog;->mContext:Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumeLimiterWarningDialog;->initDialog()V

    return-void
.end method

.method private initDialog()V
    .locals 2

    .line 46
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 47
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7e4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    const/4 v0, 0x1

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Z)V

    .line 49
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 50
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeLimiterWarningDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->volume_limiter_notice_toast:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeLimiterWarningDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->volume_limiter_toast_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeLimiterWarningDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->volume_limiter_button_settings:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeLimiterWarningDialog;->mContext:Landroid/content/Context;

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {p0, v1, v0, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 55
    invoke-virtual {p0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 56
    invoke-virtual {p0, p0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method private synthetic lambda$dispatch$0(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 1

    .line 108
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeLimiterWarningDialog;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 109
    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeObserver;->onChanged(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 107
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeLimiterWarningDialog;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    new-instance v0, Lcom/android/systemui/volume/view/VolumeLimiterWarningDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/volume/view/VolumeLimiterWarningDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/volume/view/VolumeLimiterWarningDialog;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    invoke-virtual {p2, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 113
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeLimiterWarningDialog;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 114
    invoke-interface {p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumeObserver;->onChanged(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public bridge synthetic dispatch(Ljava/lang/Object;Z)V
    .locals 0

    .line 25
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/view/VolumeLimiterWarningDialog;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public onChanged(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 2

    .line 121
    sget-object v0, Lcom/android/systemui/volume/view/VolumeLimiterWarningDialog$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType:[I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 136
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_COVER_CLOSED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 137
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeLimiterWarningDialog;->mToastWrapper:Lcom/android/systemui/volume/util/ToastWrapper;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeLimiterWarningDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->volume_limiter_open_cover_toast:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/volume/util/ToastWrapper;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 123
    :cond_2
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->COVER_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p1

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->TYPE_CLEAR_COVER:I

    if-eq p1, v0, :cond_3

    .line 124
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/VolumeLimiterWarningDialog;->onChanged(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 80
    new-instance p2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_VOLUME_LIMITER_DIALOG_SETTINS_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p2, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 81
    invoke-virtual {p2, v1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p2

    .line 82
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p2

    .line 80
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/volume/view/VolumeLimiterWarningDialog;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    goto :goto_0

    .line 84
    :cond_0
    new-instance p2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_VOLUME_LIMITER_DIALOG_CANCEL_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p2, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 85
    invoke-virtual {p2, v1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p2

    .line 86
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p2

    .line 84
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/volume/view/VolumeLimiterWarningDialog;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    :goto_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 92
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_DISMISS_VOLUME_LIMITER_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 93
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/volume/view/VolumeLimiterWarningDialog;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    .line 94
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeLimiterWarningDialog;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    invoke-interface {p1}, Lcom/samsung/systemui/splugins/volume/VolumeDisposable;->dispose()V

    .line 95
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeLimiterWarningDialog;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeDisposable;->dispose()V

    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p1, 0x0

    const/16 p3, 0x19

    if-ne p2, p3, :cond_0

    .line 70
    new-instance p2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object p3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_VOLUME_LIMITER_DIALOG_VOLUME_DOWN:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p2, p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object p3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const/4 v0, 0x1

    .line 71
    invoke-virtual {p2, p3, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p2

    .line 72
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p2

    .line 70
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/volume/view/VolumeLimiterWarningDialog;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    :cond_0
    return p1
.end method

.method public setDependencies(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/android/systemui/volume/util/HandlerWrapper;Lcom/android/systemui/volume/util/ToastWrapper;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeLimiterWarningDialog;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 61
    iput-object p2, p0, Lcom/android/systemui/volume/view/VolumeLimiterWarningDialog;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 62
    iput-object p3, p0, Lcom/android/systemui/volume/view/VolumeLimiterWarningDialog;->mToastWrapper:Lcom/android/systemui/volume/util/ToastWrapper;

    .line 63
    invoke-virtual {p1, p0}, Lcom/android/systemui/volume/store/VolumePanelStore;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeLimiterWarningDialog;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 64
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeLimiterWarningDialog;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/VolumeLimiterWarningDialog;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeLimiterWarningDialog;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

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

    .line 100
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeLimiterWarningDialog;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeLimiterWarningDialog;->mObservers:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;-><init>(Ljava/util/ArrayList;Lcom/samsung/systemui/splugins/volume/VolumeObserver;)V

    return-object v0
.end method
