.class Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView$1;
.super Ljava/lang/Object;
.source "QSClockHomeIndicatorView.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView$1;->this$0:Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 242
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView$1;->this$0:Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;->access$000(Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;)Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    move-result-object p1

    if-nez p1, :cond_1

    .line 243
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView$1;->this$0:Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;

    const-class v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;->access$002(Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    .line 245
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView$1;->this$0:Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;->access$000(Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;)Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->ringBellOfTower()V

    return-void
.end method
