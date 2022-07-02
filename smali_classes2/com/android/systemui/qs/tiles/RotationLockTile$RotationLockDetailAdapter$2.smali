.class Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$2;
.super Ljava/lang/Object;
.source "RotationLockTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->setLockScreenRotationAllowed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;

.field final synthetic val$allowed:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;Z)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$2;->this$1:Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$2;->val$allowed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 422
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$2;->this$1:Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$500(Lcom/android/systemui/qs/tiles/RotationLockTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$2;->val$allowed:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->setLockScreenRotationAllowed(Z)V

    .line 425
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QPDE1011"

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$2;->this$1:Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$600(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$2;->val$allowed:Z

    const-string v2, "QPDS1010"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 429
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$2;->this$1:Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$600(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 431
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$2;->this$1:Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$900(Lcom/android/systemui/qs/tiles/RotationLockTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " lockScreen is rotate allowed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$2;->val$allowed:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
