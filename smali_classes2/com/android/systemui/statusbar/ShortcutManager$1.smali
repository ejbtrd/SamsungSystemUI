.class Lcom/android/systemui/statusbar/ShortcutManager$1;
.super Landroid/content/BroadcastReceiver;
.source "ShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/ShortcutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ShortcutManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ShortcutManager;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/android/systemui/statusbar/ShortcutManager$1;->this$0:Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 202
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 203
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "com.samsung.applock.intent.action.SSECURE_UPDATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v5, 0xb

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v5, 0xa

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v5, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "com.samsung.applock.intent.action.APPLOCK_ENABLE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v5, 0x8

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x7

    goto :goto_0

    :sswitch_5
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v5, 0x6

    goto :goto_0

    :sswitch_6
    const-string v0, "com.sec.android.app.kidshome.action.DEFAULT_HOME_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    move v5, v1

    goto :goto_0

    :sswitch_7
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v5, 0x4

    goto :goto_0

    :sswitch_8
    const-string v0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    move v5, v2

    goto :goto_0

    :sswitch_9
    const-string v0, "com.samsung.android.action.LOCK_TASK_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    move v5, v3

    goto :goto_0

    :sswitch_a
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v5, 0x1

    goto :goto_0

    :sswitch_b
    const-string v0, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    move v5, v4

    :goto_0
    const-string/jumbo v0, "onReceive : "

    const-string v6, "ShortcutManager"

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_4

    .line 216
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 217
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 219
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onReceive : Intent.EXTRA_REPLACING false, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-ge v4, v3, :cond_10

    .line 224
    iget-object p2, p0, Lcom/android/systemui/statusbar/ShortcutManager$1;->this$0:Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-static {p2}, Lcom/android/systemui/statusbar/ShortcutManager;->access$300(Lcom/android/systemui/statusbar/ShortcutManager;)[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    move-result-object p2

    aget-object p2, p2, v4

    iget-object p2, p2, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/android/systemui/statusbar/ShortcutManager$1;->this$0:Lcom/android/systemui/statusbar/ShortcutManager;

    .line 225
    invoke-static {p2}, Lcom/android/systemui/statusbar/ShortcutManager;->access$300(Lcom/android/systemui/statusbar/ShortcutManager;)[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    move-result-object p2

    aget-object p2, p2, v4

    iget-object p2, p2, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 226
    iget-object p2, p0, Lcom/android/systemui/statusbar/ShortcutManager$1;->this$0:Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-static {p2, v4}, Lcom/android/systemui/statusbar/ShortcutManager;->access$400(Lcom/android/systemui/statusbar/ShortcutManager;I)V

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 205
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/ShortcutManager$1;->this$0:Lcom/android/systemui/statusbar/ShortcutManager;

    const-string v2, "kids_home_mode"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/ShortcutManager;->access$102(Lcom/android/systemui/statusbar/ShortcutManager;Z)Z

    .line 206
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isKidsMode : "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager$1;->this$0:Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-static {p0}, Lcom/android/systemui/statusbar/ShortcutManager;->access$100(Lcom/android/systemui/statusbar/ShortcutManager;)Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 261
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager$1;->this$0:Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ShortcutManager;->updateShortcuts()V

    goto/16 :goto_4

    :pswitch_3
    const-string/jumbo v3, "reason"

    .line 265
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", with state "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", updating shortcuts"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p2, v2, :cond_d

    if-ne p2, v1, :cond_10

    .line 268
    :cond_d
    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager$1;->this$0:Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ShortcutManager;->updateShortcuts()V

    goto/16 :goto_4

    .line 210
    :pswitch_4
    iget-object p2, p0, Lcom/android/systemui/statusbar/ShortcutManager$1;->this$0:Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-static {p2}, Lcom/android/systemui/statusbar/ShortcutManager;->access$200(Lcom/android/systemui/statusbar/ShortcutManager;)Z

    move-result v1

    iput-boolean v1, p2, Lcom/android/systemui/statusbar/ShortcutManager;->mIsLocksTaskModeLocked:Z

    .line 211
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mIsLocksTaskModeLocked : "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager$1;->this$0:Lcom/android/systemui/statusbar/ShortcutManager;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mIsLocksTaskModeLocked:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 235
    :pswitch_5
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    :goto_2
    if-ge v4, v3, :cond_10

    .line 238
    iget-object v1, p0, Lcom/android/systemui/statusbar/ShortcutManager$1;->this$0:Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/ShortcutManager;->access$300(Lcom/android/systemui/statusbar/ShortcutManager;)[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    move-result-object v1

    aget-object v1, v1, v4

    iget-object v1, v1, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/systemui/statusbar/ShortcutManager$1;->this$0:Lcom/android/systemui/statusbar/ShortcutManager;

    .line 239
    invoke-static {v1}, Lcom/android/systemui/statusbar/ShortcutManager;->access$300(Lcom/android/systemui/statusbar/ShortcutManager;)[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    move-result-object v1

    aget-object v1, v1, v4

    iget-object v1, v1, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", starting update of shortcut "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v1, p0, Lcom/android/systemui/statusbar/ShortcutManager$1;->this$0:Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/ShortcutManager;->access$300(Lcom/android/systemui/statusbar/ShortcutManager;)[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    move-result-object v2

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v1, v4, v2}, Lcom/android/systemui/statusbar/ShortcutManager;->access$500(Lcom/android/systemui/statusbar/ShortcutManager;ILandroid/content/ComponentName;)V

    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :pswitch_6
    const-string v1, "android.intent.extra.changed_package_list"

    .line 248
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    :goto_3
    if-ge v4, v3, :cond_10

    .line 250
    iget-object v1, p0, Lcom/android/systemui/statusbar/ShortcutManager$1;->this$0:Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/ShortcutManager;->access$300(Lcom/android/systemui/statusbar/ShortcutManager;)[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    move-result-object v1

    aget-object v1, v1, v4

    iget-object v1, v1, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_f

    if-eqz p2, :cond_f

    .line 251
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/ShortcutManager$1;->this$0:Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/ShortcutManager;->access$300(Lcom/android/systemui/statusbar/ShortcutManager;)[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    move-result-object v2

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", suspended shortcut "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ShortcutManager$1;->this$0:Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/ShortcutManager;->access$300(Lcom/android/systemui/statusbar/ShortcutManager;)[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    move-result-object v2

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v1, p0, Lcom/android/systemui/statusbar/ShortcutManager$1;->this$0:Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/ShortcutManager;->access$300(Lcom/android/systemui/statusbar/ShortcutManager;)[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    move-result-object v2

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v1, v4, v2}, Lcom/android/systemui/statusbar/ShortcutManager;->access$500(Lcom/android/systemui/statusbar/ShortcutManager;ILandroid/content/ComponentName;)V

    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_10
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3bb3e592 -> :sswitch_b
        -0x304ed112 -> :sswitch_a
        -0xd655f1f -> :sswitch_9
        -0x8cbe44f -> :sswitch_8
        -0x122164c -> :sswitch_7
        0x10c8346 -> :sswitch_6
        0xa480416 -> :sswitch_5
        0x1f50b9c2 -> :sswitch_4
        0x4356ea54 -> :sswitch_3
        0x4cef8b35 -> :sswitch_2
        0x5c1076e2 -> :sswitch_1
        0x798ccea7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method
