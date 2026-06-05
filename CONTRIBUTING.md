# Contributing Guide

Thank you for considering contributing to this project!

## Getting Started

1. Fork the repository.
2. Clone your fork: `git clone https://github.com/YOUR_USERNAME/Image_Viewer_App.git`.
3. Create a branch: `git checkout -b feat/your-feature`.
4. Make your changes following the code standards below.
5. Run `flutter analyze` and `flutter test`; both must pass before review.
6. Commit using Conventional Commits format.
7. Push and open a Pull Request targeting `develop`.

## Code Standards

- Follow the existing feature-first structure under `lib/`.
- Keep presentation widgets small and reusable.
- Prefer constants for repeated strings, paths, sizing, and theme values.
- Keep assets declared in `pubspec.yaml` and stored under `assets/`.
- Add focused widget or unit tests for user-facing behavior changes.
- Never commit hardcoded secrets, API keys, credentials, or local machine paths.

## Commit Messages

Format: `type(scope): description`

Types: `feat`, `fix`, `docs`, `style`, `refactor`, `test`, `chore`

## Pull Request Checklist

- [ ] `flutter analyze` passes with 0 errors.
- [ ] `flutter test` passes.
- [ ] Code follows the existing project structure.
- [ ] No secrets or API keys are committed.
- [ ] PR description explains what changed and why.

## Bug Reports

Open an issue with:

- Flutter version (`flutter --version`)
- Device/OS
- Steps to reproduce
- Expected vs actual behavior
- Screenshots if applicable
