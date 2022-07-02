.class public Lcom/android/systemui/power/TipsConfig;
.super Ljava/lang/Object;
.source "TipsConfig.java"


# static fields
.field public static final TURN_OFF_PSM_COMPONENT_NAME:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 54
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.sm_cn"

    const-string v2, "com.samsung.android.sm.external.receiver.TurnOffPsmNotiReceiver"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/power/TipsConfig;->TURN_OFF_PSM_COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method
