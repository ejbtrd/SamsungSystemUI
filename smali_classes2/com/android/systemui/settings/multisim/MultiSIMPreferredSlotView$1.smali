.class Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$1;
.super Landroid/content/BroadcastReceiver;
.source "MultiSIMPreferredSlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)V
    .locals 0

    .line 930
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$1;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 933
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$1;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    invoke-static {p1}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->access$800(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 934
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$1;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    invoke-static {p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->access$800(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method
