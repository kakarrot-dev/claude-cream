/** @deprecated Use ThemeProfile instead. */
interface LegacyTheme {
  name: string
}

interface ThemeProfile<TMode extends string> {
  readonly name: string
  mode: TMode
  contrast: number
}

enum ThemeMode {
  Light = 'light',
  Dark = 'dark',
}

const versionPattern = /cream-(?<version>\d+)/i

export async function resolveTheme<T extends ThemeMode>(
  profile: ThemeProfile<T>,
): Promise<ThemeProfile<T>> {
  const label = `${profile.name}:${profile.mode}`
  return { ...profile, name: label, contrast: Math.max(profile.contrast, 4.5) }
}

export const legacy: LegacyTheme | null = null
