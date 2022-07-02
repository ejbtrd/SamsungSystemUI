.class final Lcom/android/systemui/controls/ui/fragment/SubSettingFragment$onCreateView$2$1;
.super Ljava/lang/Object;
.source "SubSettingFragment.kt"

# interfaces
.implements Landroidx/appcompat/widget/SeslSwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/fragment/SubSettingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $this_apply:Landroidx/appcompat/widget/SeslSwitchBar;

.field final synthetic this$0:Lcom/android/systemui/controls/ui/fragment/SubSettingFragment;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/SeslSwitchBar;Lcom/android/systemui/controls/ui/fragment/SubSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/SubSettingFragment$onCreateView$2$1;->$this_apply:Landroidx/appcompat/widget/SeslSwitchBar;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/fragment/SubSettingFragment$onCreateView$2$1;->this$0:Lcom/android/systemui/controls/ui/fragment/SubSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSwitchChanged(Landroidx/appcompat/widget/SwitchCompat;Z)V
    .locals 2

    .line 54
    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/SubSettingFragment$onCreateView$2$1;->$this_apply:Landroidx/appcompat/widget/SeslSwitchBar;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "ControlsSettingsUseWhilePhoneIsLocked"

    invoke-static {p1, v0, p2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 56
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    if-eqz p1, :cond_0

    .line 57
    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/SubSettingFragment$onCreateView$2$1;->this$0:Lcom/android/systemui/controls/ui/fragment/SubSettingFragment;

    invoke-static {p1}, Lcom/android/systemui/controls/ui/fragment/SubSettingFragment;->access$getSaLogger$p(Lcom/android/systemui/controls/ui/fragment/SubSettingFragment;)Lcom/android/systemui/controls/ui/util/SALogger;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/SubSettingFragment$onCreateView$2$1;->$this_apply:Landroidx/appcompat/widget/SeslSwitchBar;

    .line 58
    new-instance v0, Lcom/android/systemui/controls/ui/util/SALogger$Event$UseWhileUnlockedOnOff;

    sget-object v1, Lcom/android/systemui/controls/ui/util/SALogger$Screen$UseWhile;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Screen$UseWhile;

    invoke-direct {v0, v1, p2}, Lcom/android/systemui/controls/ui/util/SALogger$Event$UseWhileUnlockedOnOff;-><init>(Lcom/android/systemui/controls/ui/util/SALogger$Screen;Z)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/controls/ui/util/SALogger;->sendEvent(Lcom/android/systemui/controls/ui/util/SALogger$Event;)V

    .line 59
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent$UseWhileUnlockedActive;

    invoke-direct {v0, p2}, Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent$UseWhileUnlockedActive;-><init>(Z)V

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/controls/ui/util/SALogger;->sendStatusEvent(Landroid/content/Context;Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent;)V

    :cond_0
    return-void
.end method
