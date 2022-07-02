.class Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$1;
.super Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;
.source "QSMumButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;


# direct methods
.method public static synthetic $r8$lambda$AGZoAFnLpORgOOwb8SjApUNt-OI(Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$1;->lambda$notifyDataSetChanged$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$1;->this$1:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    return-void
.end method

.method private synthetic lambda$notifyDataSetChanged$0()V
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$1;->this$1:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;

    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->updateMumSwitchVisibility()V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .line 133
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 134
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "QSMumButton"

    const-string v1, "MumAndDexHelper, UserSwitcherController.BaseUserAdapter notifyDataSetChanged()"

    .line 135
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$1;->this$1:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;

    iget-object v0, v0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->this$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    new-instance v1, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
