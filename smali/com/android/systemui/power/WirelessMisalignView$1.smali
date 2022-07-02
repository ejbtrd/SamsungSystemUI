.class Lcom/android/systemui/power/WirelessMisalignView$1;
.super Ljava/lang/Object;
.source "WirelessMisalignView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/WirelessMisalignView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/WirelessMisalignView;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/WirelessMisalignView;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/android/systemui/power/WirelessMisalignView$1;->this$0:Lcom/android/systemui/power/WirelessMisalignView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "PowerUI.WirelessMisalignView"

    const-string v0, "button click : misalign view gone"

    .line 104
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object p1, p0, Lcom/android/systemui/power/WirelessMisalignView$1;->this$0:Lcom/android/systemui/power/WirelessMisalignView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/systemui/power/WirelessMisalignView;->setWirelessMisalignViewVisibility(I)V

    .line 106
    iget-object p0, p0, Lcom/android/systemui/power/WirelessMisalignView$1;->this$0:Lcom/android/systemui/power/WirelessMisalignView;

    invoke-static {p0}, Lcom/android/systemui/power/WirelessMisalignView;->access$000(Lcom/android/systemui/power/WirelessMisalignView;)Lcom/android/systemui/power/WirelessMisalignListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/power/WirelessMisalignListener;->onWirelessMisalignCompleted()V

    return-void
.end method
