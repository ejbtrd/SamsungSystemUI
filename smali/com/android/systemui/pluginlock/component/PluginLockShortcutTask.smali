.class public abstract Lcom/android/systemui/pluginlock/component/PluginLockShortcutTask;
.super Ljava/lang/Object;
.source "PluginLockShortcutTask.java"


# static fields
.field public static final DO_NOT_DISTURB_TASK:Ljava/lang/String; = "Dnd"

.field public static final FLASH_LIGHT_TASK:Ljava/lang/String; = "Flashlight"

.field public static final GET_LOCKSTAR_TASK_SHORTCUT_STATE:Ljava/lang/String; = "get_lockstar_task_shortcut_state"

.field public static final KEY_ACTION:Ljava/lang/String; = "action"

.field public static final KEY_ARG:Ljava/lang/String; = "arg"

.field public static final KEY_EXTRAS:Ljava/lang/String; = "extras"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutTask;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract excute()V
.end method

.method public abstract getAppLabel()Ljava/lang/String;
.end method

.method public abstract getDrawble()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract removeListener()V
.end method

.method public abstract setState(Z)V
.end method
