.class final Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$toggleMainAction$action$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ControlActionCoordinatorImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->toggleMainAction(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

.field final synthetic $isChecked:Z

.field final synthetic $templateId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$toggleMainAction$action$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$toggleMainAction$action$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    iput-boolean p3, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$toggleMainAction$action$1;->$isChecked:Z

    iput-object p4, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$toggleMainAction$action$1;->$templateId:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$toggleMainAction$action$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 7

    .line 103
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$toggleMainAction$action$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCustomControlViewHolder()Lcom/android/systemui/controls/ui/CustomControlViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->getActionIcon()Lcom/android/systemui/controls/ui/view/ActionIconView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$toggleMainAction$action$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$toggleMainAction$action$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iget-boolean v3, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$toggleMainAction$action$1;->$isChecked:Z

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$toggleMainAction$action$1;->$templateId:Ljava/lang/String;

    .line 104
    sget-boolean v4, Lcom/android/systemui/BasicRune;->CONTROLS_CUSTOM_MAIN_ACTION_ICON_PROGRESS:Z

    if-eqz v4, :cond_1

    .line 105
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/view/ActionIconView;->runMainActonIconProgress()V

    .line 107
    :cond_1
    sget-boolean v4, Lcom/android/systemui/BasicRune;->CONTROLS_AUI:Z

    if-eqz v4, :cond_3

    .line 108
    invoke-static {v1}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->access$getAuiFacade$p(Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;)Lcom/android/systemui/controls/ui/util/AUIFacade;

    move-result-object v1

    .line 109
    invoke-virtual {v2}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCws()Lcom/android/systemui/controls/ui/ControlWithState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/controls/ui/ControlWithState;->getControl()Landroid/service/controls/Control;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Landroid/service/controls/Control;->getCustomSound()I

    move-result v4

    .line 110
    :goto_0
    invoke-virtual {v2}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCws()Lcom/android/systemui/controls/ui/ControlWithState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/controls/ui/ControlWithState;->getCi()Lcom/android/systemui/controls/controller/ControlInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/controls/controller/ControlInfo;->getDeviceType()I

    move-result v5

    xor-int/lit8 v6, v3, 0x1

    .line 112
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/view/ActionIconView;->getView()Landroid/widget/ImageView;

    move-result-object v0

    .line 108
    invoke-interface {v1, v4, v5, v6, v0}, Lcom/android/systemui/controls/ui/util/AUIFacade;->playClick(IIZLandroid/view/View;)V

    .line 115
    :cond_3
    new-instance v0, Landroid/service/controls/actions/BooleanAction;

    xor-int/lit8 v1, v3, 0x1

    invoke-direct {v0, p0, v1}, Landroid/service/controls/actions/BooleanAction;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2, v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->action(Landroid/service/controls/actions/ControlAction;)V

    :goto_1
    return-void
.end method
