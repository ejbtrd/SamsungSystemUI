.class Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$10;
.super Ljava/lang/Object;
.source "RotationLockTile.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->updateButtonOnNavigationBarOption(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;)V
    .locals 0

    .line 620
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$10;->this$1:Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 623
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$10;->this$1:Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$500(Lcom/android/systemui/qs/tiles/RotationLockTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/systemui/util/SettingsHelper;->setNavigationBarRotateSuggestion(Z)V

    .line 626
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QPDE1009"

    invoke-static {p1, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$10;->this$1:Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$600(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "QPDS1009"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 630
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$10;->this$1:Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$600(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
