.class Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;
.super Ljava/lang/Object;
.source "DropResolverActivity.java"

# interfaces
.implements Lcom/android/internal/app/chooser/TargetInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/draganddrop/DropResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TargetInfoWrapper"
.end annotation


# instance fields
.field private final mOverrideActivityOptions:Landroid/os/Bundle;

.field private final mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

.field private final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method private constructor <init>(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    .line 193
    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mOverrideActivityOptions:Landroid/os/Bundle;

    .line 194
    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mUserHandle:Landroid/os/UserHandle;

    return-void
.end method

.method static create(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/Bundle;Landroid/os/UserHandle;)Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;
    .locals 1

    .line 187
    new-instance v0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;-><init>(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-object v0
.end method


# virtual methods
.method public cloneFilledIn(Landroid/content/Intent;I)Lcom/android/internal/app/chooser/TargetInfo;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/app/chooser/TargetInfo;->cloneFilledIn(Landroid/content/Intent;I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object p0

    return-object p0
.end method

.method public getAllSourceIntents()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 261
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    invoke-interface {p0}, Lcom/android/internal/app/chooser/TargetInfo;->getAllSourceIntents()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 251
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    invoke-interface {p0, p1}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayLabel()Ljava/lang/CharSequence;
    .locals 0

    .line 241
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    invoke-interface {p0}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getExtendedInfo()Ljava/lang/CharSequence;
    .locals 0

    .line 246
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    invoke-interface {p0}, Lcom/android/internal/app/chooser/TargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 0

    .line 236
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    invoke-interface {p0}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method public getResolvedComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    invoke-interface {p0}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getResolvedIntent()Landroid/content/Intent;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    invoke-interface {p0}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public isPinned()Z
    .locals 0

    .line 271
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    invoke-interface {p0}, Lcom/android/internal/app/chooser/TargetInfo;->isPinned()Z

    move-result p0

    return p0
.end method

.method public isSuspended()Z
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    invoke-interface {p0}, Lcom/android/internal/app/chooser/TargetInfo;->isSuspended()Z

    move-result p0

    return p0
.end method

.method public semGetBadgeContentDescription()Ljava/lang/CharSequence;
    .locals 0

    .line 281
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    invoke-interface {p0}, Lcom/android/internal/app/chooser/TargetInfo;->semGetBadgeContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public semGetBadgeIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    invoke-interface {p0}, Lcom/android/internal/app/chooser/TargetInfo;->semGetBadgeIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public start(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .locals 1

    if-nez p2, :cond_0

    .line 210
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mOverrideActivityOptions:Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 213
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/app/chooser/TargetInfo;->start(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public startAsCaller(Lcom/android/internal/app/ResolverActivity;Landroid/os/Bundle;I)Z
    .locals 1

    if-nez p2, :cond_0

    .line 219
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mOverrideActivityOptions:Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 222
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/app/chooser/TargetInfo;->startAsCaller(Lcom/android/internal/app/ResolverActivity;Landroid/os/Bundle;I)Z

    move-result p0

    return p0
.end method

.method public startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z
    .locals 0

    if-nez p2, :cond_0

    .line 228
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 230
    :cond_0
    iget-object p3, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mOverrideActivityOptions:Landroid/os/Bundle;

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 231
    iget-object p3, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mUserHandle:Landroid/os/UserHandle;

    invoke-interface {p3, p1, p2, p0}, Lcom/android/internal/app/chooser/TargetInfo;->startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method
