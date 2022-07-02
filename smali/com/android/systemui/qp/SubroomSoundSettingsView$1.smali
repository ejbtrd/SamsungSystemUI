.class Lcom/android/systemui/qp/SubroomSoundSettingsView$1;
.super Landroid/content/BroadcastReceiver;
.source "SubroomSoundSettingsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qp/SubroomSoundSettingsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qp/SubroomSoundSettingsView;


# direct methods
.method constructor <init>(Lcom/android/systemui/qp/SubroomSoundSettingsView;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView$1;->this$0:Lcom/android/systemui/qp/SubroomSoundSettingsView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView$1;->this$0:Lcom/android/systemui/qp/SubroomSoundSettingsView;

    invoke-virtual {p1}, Lcom/android/systemui/qp/SubroomSoundSettingsView;->getSoundProfile()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/systemui/qp/SubroomSoundSettingsView;->access$002(Lcom/android/systemui/qp/SubroomSoundSettingsView;I)I

    .line 89
    iget-object p0, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView$1;->this$0:Lcom/android/systemui/qp/SubroomSoundSettingsView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/qp/SubroomSoundSettingsView;->access$100(Lcom/android/systemui/qp/SubroomSoundSettingsView;Z)V

    :cond_0
    return-void
.end method
