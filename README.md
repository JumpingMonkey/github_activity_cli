# GitHub Activity CLI

A simple command-line interface (CLI) tool to fetch and display a GitHub user's recent activity. The tool uses GitHub's public API to fetch user events and display them in a readable format.

This project Url: [GitHub User Activity CLI project](https://roadmap.sh/projects/github-user-activity) from roadmap.sh.

## Features

- Fetch recent GitHub activity for any user
- Display activity in a readable format in the terminal
- Support for various GitHub events (Push, Pull Request, Issues, etc.)
- Debug mode for troubleshooting
- No external dependencies required
- Docker support for easy deployment

## Installation

### Local Installation

1. Make sure you have PHP installed on your system (PHP 7.4 or higher recommended)
2. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/github-activity-cli.git
   cd github-activity-cli
   ```
3. Make the script executable:
   ```bash
   chmod +x github-activity
   ```

### Docker Installation

1. Make sure you have Docker installed on your system
2. Build the Docker image:
   ```bash
   docker build -t github-activity-cli .
   ```

## Usage

### Local Usage

Basic usage:
```bash
./github-activity <username>
```

With debug mode:
```bash
./github-activity --debug <username>
```

### Docker Usage

Basic usage:
```bash
docker run github-activity-cli <username>
```

With debug mode:
```bash
docker run github-activity-cli --debug <username>
```

Example:
```bash
# View activity for user 'octocat'
docker run github-activity-cli octocat

# View activity with debug information
docker run github-activity-cli --debug octocat
```

## Supported Events

The tool can display various GitHub events including:
- Push events (commits)
- Pull request events
- Issue events
- Fork events
- Watch events (stars)
- Create events (repositories, branches, tags)
- Delete events
- Comment events (commit comments, issue comments)

## Troubleshooting

If you're not seeing any activities, it could be due to one of these reasons:

1. **No Public Activity**: The user might not have any public activity
2. **Age Limitation**: GitHub's API only returns events from the last 90 days
3. **Private Activities**: Private repository activities are not visible
4. **Rate Limiting**: GitHub API has rate limits for unauthenticated requests

To diagnose issues, run the tool with the `--debug` flag:
```bash
docker run github-activity-cli --debug <username>
```

This will show:
- The exact API URL being called
- HTTP response code
- Number of events received
- Raw API response (if available)

## API Rate Limits

The GitHub API has rate limits for unauthenticated requests:
- 60 requests per hour per IP address
- Events are limited to the last 90 days

## License

MIT License
