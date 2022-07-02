.class public abstract Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;
.super Ljava/lang/Object;
.source "KeyguardBottomAreaShortcutTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask$Callback;
    }
.end annotation


# instance fields
.field protected mCallback:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask$Callback;

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask$Callback;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;->mContext:Landroid/content/Context;

    .line 13
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask$Callback;

    return-void
.end method


# virtual methods
.method public abstract addListener()V
.end method

.method public abstract execute()V
.end method

.method public abstract getAppLabel()Ljava/lang/String;
.end method

.method public abstract getDrawble()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getPanelDrawble(Z)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract isPanelIconTransitionNeeded()Z
.end method

.method public abstract removeListener()V
.end method
