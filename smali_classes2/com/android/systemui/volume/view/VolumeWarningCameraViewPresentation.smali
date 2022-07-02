.class public Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;
.super Landroid/app/Presentation;
.source "VolumeWarningCameraViewPresentation.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeObservable;
.implements Lcom/samsung/systemui/splugins/volume/VolumeObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Presentation;",
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

.field private final mDialogType:Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;

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


# direct methods
.method public static synthetic $r8$lambda$Tn5oZS09YfoWW_G4xIl4OkDBBpU(Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->lambda$dispatch$0(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jKIX5KxpcZANO4NfMxgBlU4JAHo(Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->lambda$setClickListener$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qzsZr7uEZ99Q3zqE0YxU9J1iGAc(Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->lambda$setClickListener$2(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;)V
    .locals 1

    .line 50
    sget v0, Lcom/android/systemui/R$style;->Theme_SystemUI_VolumePanelPresentation:I

    invoke-direct {p0, p1, p2, v0}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;I)V

    .line 39
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->mObservers:Ljava/util/ArrayList;

    .line 51
    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->mContext:Landroid/content/Context;

    .line 52
    iput-object p3, p0, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->mDialogType:Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->initDialog()V

    return-void
.end method

.method private adjustLayout()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->mDialogType:Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;

    sget-object v1, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;->VOLUME_CSD_100_WARNING:Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;

    if-ne v0, v1, :cond_0

    .line 179
    sget v0, Lcom/android/systemui/R$id;->negative_button:I

    invoke-virtual {p0, v0}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    const/16 v0, 0x8

    .line 180
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private initDialog()V
    .locals 0

    .line 131
    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->prepareWindow()V

    .line 132
    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->adjustLayout()V

    .line 133
    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->setWarningText()V

    .line 134
    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->setClickListener()V

    return-void
.end method

.method private synthetic lambda$dispatch$0(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 1

    .line 98
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 99
    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeObserver;->onChanged(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$setClickListener$1(Landroid/view/View;)V
    .locals 3

    .line 187
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->mDialogType:Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;

    sget-object v0, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;->DEFAULT_SAFETY_VOLUME_WARNING:Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    .line 188
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_VOLUME_SAFETY_WARNING_DIALOG_CANCEL_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 189
    invoke-virtual {p1, v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    .line 188
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    goto :goto_0

    .line 190
    :cond_0
    sget-object v0, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;->MEDIA_VOLUME_LIMITER_WARNING:Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;

    if-ne p1, v0, :cond_1

    .line 191
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_VOLUME_LIMITER_DIALOG_CANCEL_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 192
    invoke-virtual {p1, v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    .line 191
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$setClickListener$2(Landroid/view/View;)V
    .locals 3

    .line 198
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->mDialogType:Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;

    sget-object v0, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;->DEFAULT_SAFETY_VOLUME_WARNING:Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    .line 199
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_VOLUME_SAFETY_WARNING_DIALOG_OK_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 200
    invoke-virtual {p1, v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    .line 199
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    goto :goto_0

    .line 201
    :cond_0
    sget-object v0, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;->MEDIA_VOLUME_LIMITER_WARNING:Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;

    if-ne p1, v0, :cond_1

    .line 202
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_VOLUME_LIMITER_DIALOG_SETTINS_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 203
    invoke-virtual {p1, v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    .line 202
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    goto :goto_0

    .line 204
    :cond_1
    sget-object v0, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;->VOLUME_CSD_100_WARNING:Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;

    if-ne p1, v0, :cond_2

    .line 205
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_VOLUME_CSD_100_WARNING_DIALOG_OK_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 206
    invoke-virtual {p1, v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    .line 205
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private prepareWindow()V
    .locals 3

    .line 138
    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 139
    sget v1, Lcom/android/systemui/R$layout;->volume_warning_camera_view_dialog:I

    invoke-virtual {p0, v1}, Landroid/app/Presentation;->setContentView(I)V

    .line 141
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    .line 142
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    .line 143
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x100

    .line 144
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x200

    .line 145
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x200000

    or-int/2addr v1, v2

    .line 146
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x7f5

    .line 147
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x10

    .line 148
    invoke-virtual {p0, v1}, Landroid/view/WindowManager$LayoutParams;->semAddPrivateFlags(I)V

    const-wide/16 v1, 0x1770

    .line 149
    invoke-virtual {p0, v1, v2}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    const-wide/16 v1, 0x0

    .line 150
    invoke-virtual {p0, v1, v2}, Landroid/view/WindowManager$LayoutParams;->semSetScreenDimDuration(J)V

    const-string v1, "VolumeWarningCameraViewPresentation"

    .line 151
    invoke-virtual {p0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 152
    invoke-virtual {v0, p0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 153
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {p0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, p0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, -0x1

    .line 155
    invoke-virtual {v0, p0, p0}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method private setClickListener()V
    .locals 2

    .line 185
    sget v0, Lcom/android/systemui/R$id;->negative_button:I

    invoke-virtual {p0, v0}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 186
    new-instance v1, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    sget v0, Lcom/android/systemui/R$id;->positive_button:I

    invoke-virtual {p0, v0}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 197
    new-instance v1, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setWarningText()V
    .locals 4

    .line 159
    sget v0, Lcom/android/systemui/R$id;->volume_warning_camera_view_dialog_text_view:I

    invoke-virtual {p0, v0}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 160
    sget v1, Lcom/android/systemui/R$id;->positive_button:I

    invoke-virtual {p0, v1}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 161
    sget-object v2, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$1;->$SwitchMap$com$android$systemui$volume$view$VolumeWarningCameraViewPresentation$WarningDialogType:[I

    iget-object v3, p0, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->mDialogType:Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$string;->tw_volume_csd_100_warning:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1040013

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 167
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$string;->volume_limiter_warning_text_for_cover:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->volume_limiter_button_settings:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 163
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$string;->volume_safety_warning_text_for_cover:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->volume_safety_warning_increase_button:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private showOpenCoverMessage()V
    .locals 3

    .line 212
    sget v0, Lcom/android/systemui/R$id;->volume_warning_camera_view_dialog_view_container:I

    invoke-virtual {p0, v0}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 213
    sget v1, Lcom/android/systemui/R$id;->volume_warning_camera_view_toast_text_view:I

    invoke-virtual {p0, v1}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x8

    .line 214
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 215
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object p0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 65
    invoke-super {p0}, Landroid/app/Presentation;->dismiss()V

    .line 67
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->mDialogType:Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;

    sget-object v1, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;->DEFAULT_SAFETY_VOLUME_WARNING:Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 68
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_DISMISS_VOLUME_SAFETY_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 69
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    .line 68
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    goto :goto_0

    .line 70
    :cond_0
    sget-object v1, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;->MEDIA_VOLUME_LIMITER_WARNING:Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;

    if-ne v0, v1, :cond_1

    .line 71
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_DISMISS_VOLUME_LIMITER_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 72
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    .line 71
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    goto :goto_0

    .line 73
    :cond_1
    sget-object v1, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;->VOLUME_CSD_100_WARNING:Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;

    if-ne v0, v1, :cond_2

    .line 74
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_DISMISS_VOLUME_CSD_100_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 75
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    .line 74
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    .line 78
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 79
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeDisposable;->dispose()V

    .line 80
    iput-object v1, p0, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    if-eqz v0, :cond_4

    .line 83
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeDisposable;->dispose()V

    .line 84
    iput-object v1, p0, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    :cond_4
    return-void
.end method

.method public dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 97
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    new-instance v0, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    invoke-virtual {p2, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 103
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 104
    invoke-interface {p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumeObserver;->onChanged(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public bridge synthetic dispatch(Ljava/lang/Object;Z)V
    .locals 0

    .line 32
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public onChanged(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 1

    .line 111
    sget-object v0, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType:[I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 124
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->showOpenCoverMessage()V

    goto :goto_0

    .line 120
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->dismiss()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->onChanged(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    return-void
.end method

.method public setDependencies(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/android/systemui/volume/util/HandlerWrapper;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 58
    iput-object p2, p0, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 59
    invoke-virtual {p1, p0}, Lcom/android/systemui/volume/store/VolumePanelStore;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 60
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

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

    .line 90
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->mObservers:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;-><init>(Ljava/util/ArrayList;Lcom/samsung/systemui/splugins/volume/VolumeObserver;)V

    return-object v0
.end method
